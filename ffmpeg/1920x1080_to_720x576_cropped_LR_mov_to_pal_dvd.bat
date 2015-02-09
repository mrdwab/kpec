for %%a in ("*.mov") do ffmpeg -i "%%a"^
 -aspect 4:3^
 -vf scale=1024x576,crop=iw-304:ih:152:0^
 -target pal-dvd "PAL_DVD_Format\%%~na.mpg"
pause
