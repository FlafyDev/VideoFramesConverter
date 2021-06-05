@echo off

set input_video_file=%~dpnx1
set output_dir=%~dp1%~n1\

if exist "%output_dir%" (
	echo Output folder already exists, please delete it.
	EXIT /B
) else (
	echo Creating output folder...
	mkdir "%output_dir%"
)

ffmpeg -i "%input_video_file%" -vsync 0 "%output_dir%%%03d.bmp"
