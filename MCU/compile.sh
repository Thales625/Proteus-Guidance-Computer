rm output/pgc.ihx
rm output/pgc.hex
sdcc -mmcs51 pgc.c -o output/
# sdcc --model-large -mmcs51 pgc.c -o output/
sleep 0.5
packihx output/pgc.ihx >> output/pgc.hex
