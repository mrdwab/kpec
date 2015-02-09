@echo off
if [%1]==[] goto :eof
:loop
pdftk %1 stamp back.pdf output "%~dpn1_new%~x1" owner_pw somecrazypassword
shift
if not [%1]==[] goto loop
