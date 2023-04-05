::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFA5HSRa+GGStCLkT6ezo0+OErR5TXeEwGA==
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
::Zh4grVQjdCyDJGyX8VAjFA5HSRa+GGS5E7gZ5vzo08imlnRdHKw6YIqS5paPNPkv5VHscIQR9W9JjMQBTB1Rche4LgI1omtQ9jXLZ4mZqwqB
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Custom files maker 1.0

:loc
cls
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
set /p filnam="File name: (without extension) "
cls
set /p filext="File extension: (without dot) "
cls
@echo Creating file...
@echo. > %filnam%.%filext%
cls
@echo File %filnam%.%filext% in directory %locate% was created successfuly!
@echo.
@echo.
pause
goto loc