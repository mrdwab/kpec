for %%a in ("*.mov") do ffmpeg -i "%%a"^
 -i KP_Video_Watermark_Full_Page.png^
 -aspect 4:3^
 -filter_complex "scale=1024x576,crop=iw-304:ih:152:0,overlay=0:0"^
 -target pal-dvd "PAL_DVD_Format\%%~na.mpg"
pause
