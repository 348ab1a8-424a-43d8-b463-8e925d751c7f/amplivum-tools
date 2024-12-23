:: ==============================================
:: Script: file-backup
:: Author: 003c717e-69aa-45cf-a9ed-67f45b6c76de
:: Website: https://amplivum.com/
:: Description: Copies source file, appends today's date to the filename, and pastes in a destination folder.
::				To be used in conjunction with Windows Task Scheduler to automate file backup.
:: Version: 1.0
:: Last Modified: 2024-12-23
:: License: MIT License
:: ==============================================
@echo off

:: Define source and destination folders
set "source=placeholder1"
set "destination=placeholder2"

:: Get the current date in YYYY-MM-DD format
for /f "tokens=2 delims==" %%i in ('wmic os get localdatetime /value ^| find "="') do set datetime=%%i
set today=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%

:: Extract the filename and extension from the source file
for %%F in (%source%) do set filename=%%~nF
for %%F in (%source%) do set extension=%%~xF

:: Create the destination file name with the date prefix
set "newfile=%destination%\%today%_%filename%%extension%"

:: Copy the file to the destination with the new name
copy "%source%" "%newfile%"

:: Confirm completion
echo File copied to: %newfile%
echo File copied succesfully.

pause
exit