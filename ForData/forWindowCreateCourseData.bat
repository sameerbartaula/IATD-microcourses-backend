@echo off

:: Set the input file
set INPUT_FILE=dummyData.txt

:: Initialize a variable to store JSON data
setlocal enabledelayedexpansion

:: Loop through each line in the input file
for /f "delims=" %%a in (%INPUT_FILE%) do (
    set "course_data=%%a"
    call :send_data
)

echo All data sent successfully!
pause
exit /b

:send_data
:: Send the current course data using curl
curl -X POST http://localhost:5050/courses -H "Content-Type: application/json" -d "!course_data!"

:: End of send_data function
exit /b
