for %%a in ("*.avi") do ffmpeg -i "%%a"^
 -i KP_Video_Watermark_100x30.png^
 -aspect 4:3^
 -filter_complex "scale=1024x576,crop=iw-304:ih:152:0,overlay=720-overlay_w-10:10"^
 -target pal-dvd "PAL_DVD_Format\%%~na.mpg"
pause
