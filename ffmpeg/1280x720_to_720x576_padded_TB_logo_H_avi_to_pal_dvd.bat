for %%a in ("*.avi") do ffmpeg -i "%%a"^
 -i KP_Video_Watermark_Full_Page_White_Text_H.png^
 -aspect 4:3^
 -filter_complex "scale=720x404,pad=720:576:0:86:black,overlay=0:0"^
 -target pal-dvd "PAL_DVD_Format\%%~na.mpg"
pause
