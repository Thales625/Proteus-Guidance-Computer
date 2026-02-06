#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/uart.h"
#include "driver/gpio.h"
#include "esp_adc/adc_oneshot.h"

#define TIMEOUT_LOOP (20 / portTICK_PERIOD_MS)

#define PORT_USB   UART_NUM_0
#define BAUD_RATE  9600

#define LED_PIN 5

#define ADC_UNIT     ADC_UNIT_1
#define ADC_ATTEN    ADC_ATTEN_DB_12
#define ADC_BITWIDTH ADC_BITWIDTH_12

#define ADC_CH_Y     ADC_CHANNEL_4   // GPIO 32 (VRX)
#define ADC_CH_X     ADC_CHANNEL_5   // GPIO 33 (VRY)

static adc_oneshot_unit_handle_t adc_handle;

static void init_usb_uart() {
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

static void init_adc(void) {
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

void app_main(void) {
    init_usb_uart();
    init_adc();

    gpio_reset_pin(LED_PIN);
    gpio_set_direction(LED_PIN, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_PIN, 1);

    float center_x=read_axis(ADC_CH_X), center_y=read_axis(ADC_CH_Y);
    float value_x=0.0f, value_y=0.0f;

    bool state = true;
    uint8_t recv_data;

    while (1) {
        int len = uart_read_bytes(PORT_USB, &recv_data, 1, TIMEOUT_LOOP);

        if (len > 0) {
            if (recv_data == 0) {
                // uart send value_x
                // value_x = read_axis(ADC_CH_X)-center_x;
                value_x = read_axis(ADC_CH_X);
                uart_write_bytes(PORT_USB, (const void*)&value_x, sizeof(float));
            } else if (recv_data == 1) {
                // uart send value_y
                // value_y = read_axis(ADC_CH_Y)-center_y;
                value_y = read_axis(ADC_CH_Y);
                uart_write_bytes(PORT_USB, (const void*)&value_y, sizeof(float));
            }
            
            state = !state;
            gpio_set_level(LED_PIN, state);
        }
        
        vTaskDelay(10 / portTICK_PERIOD_MS);    
    }
}