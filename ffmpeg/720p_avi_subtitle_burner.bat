@echo off
for %%A in (*.mkv) do ffmpeg -i "%%A"^
 -vf "ass=%%~nA_outline.ass"^
 -c:v libxvid -qscale:v 9^
 -c:a copy "%%~nA_720p.avi"
pause
