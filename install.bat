@echo off

echo Run as administrator if it says "ERROR: Access is denied."

pause

set list=.mp4 .mkv .mov .wmv .avi .flv .mkv .webm 
(for %%a in (%list%) do ( 
	@Reg Add "HKCR\SystemFileAssociations\%%a\shell\VideoFramesConverter" /VE /D "Convert to Frames" /F >Nul
	@Reg Add "HKCR\SystemFileAssociations\%%a\shell\VideoFramesConverter\command" /VE /D "\"%~dp0video-to-frames.bat\" \"%%1\"" /F >Nul
))

pause