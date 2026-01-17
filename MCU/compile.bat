@echo off

IF EXIST output\pgc.ihx DEL /F /Q output\pgc.ihx
IF EXIST output\pgc.hex DEL /F /Q output\pgc.hex

sdcc -mmcs51 pgc.c -o output\

timeout /T 1 >nul

packihx output\pgc.ihx >> output\pgc.hex
