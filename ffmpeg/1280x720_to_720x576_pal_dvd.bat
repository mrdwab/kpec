for %%a in ("*.avi") do ffmpeg -i "%%a"^
 -aspect 4:3 -vf scale=720x404,pad=720:576:0:86:black^
 -target pal-dvd "newfiles\%%~na.mpg"
pause
