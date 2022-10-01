@echo off
Rem fundational example
::set /A a = 5
::set /A b = 10
::set /A c = %a% + %b%
::if %c%==15 (echo "The value of variable c is 15") else (echo "Unknown value")
::if %c%==10 (echo "The value of variable c is 10") else (echo "Unknown value")

Rem Checking String Variables
SET str1 = String1
SET str2 = String2

if %str1%==String1 (echo "The value of variable String1") else (echo "Unkonwn value")
if %str2%==String3 (echo "The value of variable String3") else (echo "Unkonwn value")

::SET str1 = String1
::SET str2 = String2
::if defined str1 echo "Variable str1 is defined"

::if defined str3 (echo "Variable str3 is defined") else (echo "Variable str3 is not defined")

