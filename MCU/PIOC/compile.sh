rm output/pioc.ihx
rm output/pioc.hex
sdcc -mmcs51 pioc.c -o output/
sleep 0.5
packihx output/pioc.ihx >> output/pioc.hex
