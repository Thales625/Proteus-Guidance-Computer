@echo off

IF EXIST output\pioc.ihx DEL /F /Q output\pioc.ihx
IF EXIST output\pioc.hex DEL /F /Q output\pioc.hex

sdcc -mmcs51 pioc.c -o output\

timeout /T 1 >nul

packihx output\pioc.ihx >> output\pioc.hex
