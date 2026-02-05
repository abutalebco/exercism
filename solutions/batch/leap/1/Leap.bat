@echo off
setlocal enabledelayedexpansion

title leap_year
:: Leap-year calculation:
:: - leap if divisible by 4
:: - but not leap if divisible by 100
:: - unless also divisible by 400


REM Your code goes here

:: YEARS GIVEN IN PROBLEM
set years[0]=1997
set years[1]=1900
set years[2]=2000


echo checking 3 years for leap year
echo ==============================

for /l %%i in (0,1,2) do (
    set year=!years[%%i]!
    call :check_leap_year
)

echo ==============================

pause
exit /b


:check_leap_year
set /a "mod4 = year %% 4"
set /a "mod100 = year %% 100"
set /a "mod400 = year %% 400"

if %mod4% neq 0 (
  echo %year% is not a leap year
  exit /b 0
)

if %mod100% neq 0 (
  echo %year% is a leap year
  exit /b 0
)

if %mod400% equ 0 (
  echo %year% is a leap year
  ) else (
  echo %year% is not a leap year
)