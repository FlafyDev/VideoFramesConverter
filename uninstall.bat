@echo off

echo Run as administrator if it says "ERROR: Access is denied."

pause

set list=.mp4 .mkv .mov .wmv .avi .flv .mkv .webm 
(for %%a in (%list%) do ( 
	@Reg Delete "HKCR\SystemFileAssociations\%%a\shell\VideoFramesConverter"
))

pause