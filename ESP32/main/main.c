#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "driver/uart.h"
#include "driver/gpio.h"

#include "esp_adc/adc_oneshot.h"

#include <math.h>

#define TIMEOUT_LOOP (20 / portTICK_PERIOD_MS)

#define PORT_USB   UART_NUM_0
#define BAUD_RATE  9600

#define LED_PIN GPIO_NUM_5
#define BUZZER_PIN GPIO_NUM_14

#define ADC_UNIT     ADC_UNIT_1
#define ADC_ATTEN    ADC_ATTEN_DB_12
#define ADC_BITWIDTH ADC_BITWIDTH_12

#define ADC_CH_Y     ADC_CHANNEL_4   // GPIO 32 (VRX)
#define ADC_CH_X     ADC_CHANNEL_5   // GPIO 33 (VRY)

static adc_oneshot_unit_handle_t adc_handle;

static inline void init_buzzer(void) {
    gpio_reset_pin(BUZZER_PIN);
    gpio_set_direction(BUZZER_PIN, GPIO_MODE_OUTPUT);
    gpio_set_level(BUZZER_PIN, 1);
}

static inline void init_usb_uart() {
    uart_config_t uart_config = {
        .baud_rate = BAUD_RATE,
        .data_bits = UART_DATA_8_BITS,
        .parity    = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_APB,
    };

    uart_driver_install(PORT_USB, 512, 0, 0, NULL, 0);
    uart_param_config(PORT_USB, &uart_config);    
    uart_set_pin(PORT_USB, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
}

static inline void init_adc(void) {
    adc_oneshot_unit_init_cfg_t init_config = {
        .unit_id = ADC_UNIT,
        .ulp_mode = ADC_ULP_MODE_DISABLE,
    };

    adc_oneshot_new_unit(&init_config, &adc_handle);

    adc_oneshot_chan_cfg_t chan_config = {
        .bitwidth = ADC_BITWIDTH,
        .atten = ADC_ATTEN,
    };

    adc_oneshot_config_channel(adc_handle, ADC_CH_X, &chan_config);
    adc_oneshot_config_channel(adc_handle, ADC_CH_Y, &chan_config);
}

static float read_axis(adc_channel_t channel) {
    int raw = 0;
    adc_oneshot_read(adc_handle, channel, &raw);
    return raw / 4095.0f;
}

static float clamp(float value, float min, float max) {
    if (value > max) return max;
    if (value < min) return min;
    return value;
}

void app_main(void) {
    init_usb_uart();
    init_adc();
    init_buzzer();

    gpio_reset_pin(LED_PIN);
    gpio_set_direction(LED_PIN, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_PIN, 1);

    float center_x=read_axis(ADC_CH_X), center_y=read_axis(ADC_CH_Y);
    float value_x=0.0f, value_y=0.0f;

    uint8_t recv_data;

    TickType_t led_ut = 0;
    bool led_state = false;
    const TickType_t LED_BLINK_DURATION = 30 / portTICK_PERIOD_MS; // 30ms

    uint8_t buzzer_interval_sec = 2;
    TickType_t buzzer_ut = 0;
    bool buzzer_state = false;
    const TickType_t BUZZER_BEEP_DURATION = 100 / portTICK_PERIOD_MS; // 200ms

    while (1) {
        int len = uart_read_bytes(PORT_USB, &recv_data, 1, TIMEOUT_LOOP);

        if (len > 0) {
            if (recv_data == 0) {
                // python request value_x
                value_x = clamp((read_axis(ADC_CH_X)-center_x)*2.0f, -1.0f, 1.0f);
                if (fabsf(value_x) < 0.01f) value_x = 0.0f;
                uart_write_bytes(PORT_USB, (const void*)&value_x, sizeof(float));
            } else if (recv_data == 1) {
                // python request value_y
                value_y = clamp((read_axis(ADC_CH_Y)-center_y)*2.0f, -1.0f, 1.0f);
                if (fabsf(value_y) < 0.01f) value_y = 0.0f;
                uart_write_bytes(PORT_USB, (const void*)&value_y, sizeof(float));
            } else if (recv_data == 3) {
                // PGC send frequency
                uint8_t new_interval;
                int read_len = uart_read_bytes(PORT_USB, &new_interval, 1, TIMEOUT_LOOP);
                
                if (read_len > 0) {
                    buzzer_interval_sec = new_interval;
                    // if (!buzzer_state) buzzer_ut = xTaskGetTickCount() + (100*buzzer_interval_sec / portTICK_PERIOD_MS);
                }
            }
            
            gpio_set_level(LED_PIN, 0);
            led_state = true;
            led_ut = xTaskGetTickCount();
        }

        if (led_state && (xTaskGetTickCount() >= LED_BLINK_DURATION + led_ut)) {
            gpio_set_level(LED_PIN, 1);
            led_state = false;
        }

        if (buzzer_state) {
            if (xTaskGetTickCount() >= buzzer_ut) {
                gpio_set_level(BUZZER_PIN, 1);
                buzzer_state = false;
                buzzer_ut = xTaskGetTickCount() + (100*buzzer_interval_sec / portTICK_PERIOD_MS);
            }

        } else if (xTaskGetTickCount() >= buzzer_ut) {
            gpio_set_level(BUZZER_PIN, 0);
            buzzer_state = true;
            buzzer_ut = xTaskGetTickCount() + BUZZER_BEEP_DURATION;
        }
        
        vTaskDelay(10 / portTICK_PERIOD_MS);    
    }
}