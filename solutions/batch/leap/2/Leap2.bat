@echo off
setlocal enabledelayedexpansion

title leap_year2

:input_year
echo Enter a year:
set /p year=

if not "!year:~4!"=="" (
  echo Year should be 4 digits maximum.
  goto input_year
)

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
