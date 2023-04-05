::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFA5HSRa+GGStCLkT6ezo0+OErR9TXeEwGA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFA5HSRa+GGS5E7gZ5vzo08imlnRdHKw6YIqS5paPNPkv5VHscIQR8nNJmckACR8YeB2nagom6WBDu2GWd8qduArzChnHtgU1A2AU
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Disabled folder names maker 1.0

::MENU
:menu
cls
set /p menu="Would you like to do? (create/remove) "
if %menu% == create goto loc
if %menu% == remove goto locR
goto menu

::CREATE
:loc
cls
@echo WARNING: It isn't recommended to create folders with these names because it 
@echo can complicate your work or even damage Windows!
@echo.
@echo.
@echo.
set /p locate="Where you want it? (example: C:\Users\%username%\Desktop) "
cd \
if exist %locate% goto make
cls
@echo ERROR: Directory "%locate%" not found!
@echo.
@echo.
pause
goto loc

:make
cd %locate%
cls
set /p foldmk="What folder you want to create? (con/nul/prn/aux/com1(2,3,4,5,6,7,8,9)/lpt1(2,3,4,5,6,7,8,9)/menu) "
if %foldmk% == con call :con
if %foldmk% == nul call :nul
if %foldmk% == prn call :prn
if %foldmk% == aux call :aux
if %foldmk% == com1 call :com
if %foldmk% == com2 call :com
if %foldmk% == com3 call :com
if %foldmk% == com4 call :com
if %foldmk% == com5 call :com
if %foldmk% == com6 call :com
if %foldmk% == com7 call :com
if %foldmk% == com8 call :com
if %foldmk% == com9 call :com
if %foldmk% == lpt1 call :lpt
if %foldmk% == lpt2 call :lpt
if %foldmk% == lpt3 call :lpt
if %foldmk% == lpt4 call :lpt
if %foldmk% == lpt5 call :lpt
if %foldmk% == lpt6 call :lpt
if %foldmk% == lpt7 call :lpt
if %foldmk% == lpt8 call :lpt
if %foldmk% == lpt9 call :lpt
if %foldmk% == menu goto menu
cls
@echo ERROR: Wrong name!
timeout /t 3 /nobreak > nul
goto make

:con
@echo Creating folder...
mkdir con\
goto make

:nul
@echo Creating folder...
mkdir nul\
goto make

:prn
@echo Creating folder...
mkdir prn\
goto make

:aux
@echo Creating folder...
mkdir aux\
goto make

:com
@echo Creating folder...
mkdir %foldmk%\
goto make

:lpt
@echo Creating folder...
mkdir %foldmk%\
goto make

::REMOVE
:locR
cls
set /p locR="Where is it? (example: C:\Users\%username%\Desktop) "
if exist == %locR% goto foldrd
cls
@echo ERROR: Directory "%locR%" not found!
@echo.
@echo.
pause
goto locR

:foldrd
cls
set /p foldrd="Are you sure want to del. every folders with disabled names? (yes/no) "
if %foldrd% == yes goto del
if %foldrd% == no goto menu
goto foldrd

:del
cls
@echo Removing banned folders...
rd con\
rd nul\
rd prn\
rd aux\
rd com1\
rd com2\
rd com3\
rd com4\
rd com5\
rd com6\
rd com7\
rd com8\
rd com9\
rd lpt1\
rd lpt2\
rd lpt3\
rd lpt4\
rd lpt5\
rd lpt6\
rd lpt7\
rd lpt8\
rd lpt9\
@echo Succesfully!
@echo.
@echo.
pause
goto menu