REM You may need to change the location of the Acrobat Reader
REM You can also comment out the DEL to keep all files
@echo off
ECHO UF THESIS BATCH FILE
ECHO created by Jason Harrington (May 2010)
REM latex -interaction=batchmode main
REM latex -interaction=batchmode main
xelatex main
xelatex main
bibtex main
xelatex main
xelatex main
REM latex -interaction=batchmode main
REM latex -interaction=batchmode main

start "c:\Program Files (x86)\Adobe\Reader 9.0\Reader\AcroRd32.exe" main.pdf
ECHO CLEANING FOLDER...
DEL *.log *.aux  *.blg *.bak *.sav
REM del *.bbl
DEL tex\*.aux  tex\*.log  tex\*.blg tex\*.bak tex\*.sav
