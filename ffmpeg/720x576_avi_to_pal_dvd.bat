for %%a in ("*.avi") do ffmpeg -i "%%a" -aspect 4:3 -target pal-dvd "newfiles\%%~na.mpg"
pause
