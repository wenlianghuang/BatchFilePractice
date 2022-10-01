@echo off
Rem calling a function
::SETLOCAL
::CALL :Display
::EXIT /B %ERRORLEVEL%
:::Display
::SET /A index=2
::echo The value of index is %index%
::EXIT /B 0

Rem Function with Parameter
::SETLOCAL
::CALL :Display 5, 10
::EXIT /B %ERRORLEVEL%

:::Display
::echo The value of parameter 1 is %~1
::echo The value of parameter 2 is %~2
::EXIT /B 0

Rem Function with Return value(Not Success)
::SETLOCAL 
::CALL :SetValue value1,value2 
::echo %value1% 
::echo %value2% 
::EXIT /B %ERRORLEVEL% 
:::SetValue 
::set "%~1 = 5" 
::set "%~2 = 10" 
::EXIT /B 0

Rem Variable in Functions
::set str=Outer
::echo %str%
::CALL :SetValue str
::echo %str%
::EXIT /B %ERRORLEVEL%
:::SetValue
::SETLOCAL
::set str=Inner
::set "%~1=%str%"
::ENDLOCAL
::ExIT /B 0

