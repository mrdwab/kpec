@echo off
for %%A in (*.mkv) do ffmpeg -i "%%A"^
 -vf "ass=%%~nA_outline.ass"^
 -c:a copy "%%~nA_720p.mp4"
pause
