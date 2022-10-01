@echo off
Rem For list not for array 
::set list=1 2 3 4 5
::(for %%a in (%list%) do (
::	echo %%a
::))

Rem First ex of array
::set a[0]=1
::echo %a[0]%


Rem Second ex of array
::set a[0]=1
::set a[1]=2
::set a[2]=3
::echo The first element of the array is %a[0]%
::echo The second element of the array is %a[1]%
::echo The third element of the array is %a[2]%

Rem Modify the array element
::set a[0]=1
::set a[1]=2
::set a[2]=3
::Rem Adding an element at the end of an array 
::set a[3]=4
::echo The last element of the array is %a[3]%

Rem Iterating over an array
::setlocal enabledelayedexpansion
::set topic[0]=comments
::set topic[1]=variables
::set topic[2]=Arrays
::set topic[3]=Decision making
::set topic[4]=Time and date
::set tpoic[5]=Operators

::for /l %%n in (0,1,5) do (
::	echo !topic[%%n]!
::)

Rem Length of an Array
::set Arr[0]=1
::set Arr[1]=2
::set Arr[2]=3
::set Arr[3]=4
::set "x = 0"
:::SymLoop

::if defined Arr[%x%] (
::	call echo %%Arr[%x%]%%
::	set /a "x+=1"
::	GOTO :SymLoop
::)

::echo "The length of the array is" %x%

Rem Creating Structures in Arrays
::set obj[0].Name=Matt
::set obj[0].ID=1
::set obj[1].Name=Mark
::set obj[1].ID=2
::set obj[2].Name=Mohan
::set obj[2].ID=3

::FOR /L %%i IN (0 1 2) DO (
::	call echo Name = %%obj[%%i].Name%%
::	call echo Value = %%obj[%%i].ID%%
::)


