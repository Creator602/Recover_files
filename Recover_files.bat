@echo off
title Recover_files v2.0 - Created by Cherry (ItStudios) & Copilot
color 0A

:: ============================
::  STARTUP LOADING BAR
:: ============================
cls
echo Initializing Recover_files v2.0...
setlocal enabledelayedexpansion
set bar=
for /L %%i in (1,1,20) do (
    set bar=!bar!#
    cls
    echo Initializing Recover_files v2.0...
    echo [!bar!--------------------]
    timeout /nobreak /t 1 >nul
)
endlocal

:: ============================
::  ASCII LOGO (Block Tech)
:: ============================
:logo
cls
echo ███████╗███████╗ ██████╗ ██████╗ ██╗   ██╗███████╗
echo ██╔════╝██╔════╝██╔════╝██╔═══██╗██║   ██║██╔════╝
echo ███████╗█████╗  ██║     ██║   ██║██║   ██║█████╗  
echo ╚════██║██╔══╝  ██║     ██║   ██║██║   ██║██╔══╝  
echo ███████║███████╗╚██████╗╚██████╔╝╚██████╔╝███████╗
echo ╚══════╝╚══════╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝
echo ----------------------------------------------------
echo                Recover_files v2.0
echo      Created by Cherry (ItStudios) & Copilot
echo ----------------------------------------------------
echo.
echo Press any key to continue...
pause >nul

:: ============================
::  MAIN MENU
:: ============================
:menu
cls
echo [ Recover_files v2.0 ]
echo ------------------------------
echo [1] Clean USB Drive
echo [2] Clean Folder on C:
echo [3] Enter Secret Code
echo [4] Exit
echo ------------------------------
set /p choice=Select option: 

if "%choice%"=="1" goto clean_usb
if "%choice%"=="2" goto clean_c
if "%choice%"=="3" goto secret
if "%choice%"=="4" exit
goto menu

:: ============================
::  LOADING BAR FUNCTION
:: ============================
:loading
setlocal enabledelayedexpansion
cls
echo Processing...
set bar=
for /L %%i in (1,1,20) do (
    set bar=!bar!#
    cls
    echo Processing...
    echo [!bar!--------------------]
    timeout /nobreak /t 1 >nul
)
endlocal
goto :eof

:: ============================
::  CLEAN USB DRIVE
:: ============================
:clean_usb
cls
echo Enter USB drive letter (Example: E):
set /p USB_DRIVE=Drive: 

call :loading

%USB_DRIVE%:
cd\

attrib -s -h -r /s /d *.*
del /f /a /q *.lnk
del /f /a /q *.vbs

echo.
echo USB cleaning complete.
pause
goto menu

:: ============================
::  CLEAN SAFE FOLDER ON C:
:: ============================
:clean_c
cls
echo Enter folder path on C: (Example: C:\Users\Public)
set /p CFOLDER=Folder: 

call :loading

attrib -s -h -r /s /d "%CFOLDER%\*.*"
del /f /a /q "%CFOLDER%\*.lnk"
del /f /a /q "%CFOLDER%\*.vbs"

echo.
echo Folder cleaning complete.
pause
goto menu

:: ============================
::  SECRET CODE → DEV MODE
:: ============================
:secret
cls
set /p code=Enter secret code: 

if "%code%"=="5X52G134" goto devmode

echo.
echo Incorrect code.
pause
goto menu

:devmode
cls
echo ================================
echo      DEVELOPER MODE UNLOCKED
echo ================================
echo Welcome, Cherry from ItStudios.
echo Recover_files v2.0 internal tools loaded.
echo Co-Creator: Copilot
echo.
echo Fun fact: You just unlocked the coolest part.
echo ================================
pause
goto menu