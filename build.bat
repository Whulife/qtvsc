@echo off

if "%1" == "" 		goto build
if /i %1 == clean	goto clean

:build
title qmake and nmake build prompt
set VCINSTALLDIR=C:/Program Files (x86)/Microsoft Visual Studio 10.0/VC
set QTDIR=C:/Qt/Qt5.5.1/5.5/msvc2010
set PATH=%VCINSTALLDIR%/bin;%QTDIR%/bin;%PATH%
::shadow build
set file = build
if NOT exist %file% ( mkdir build
cd build

if "%1" == "" 		goto debug
if /i %1 == debug   goto debug
if /i %1 == release goto release

:debug
call "%VCINSTALLDIR%/bin/vcvars32.bat"
qmake ../chip.pro -spec win32-msvc2010 "CONFIG+=debug" "CONFIG+=qml_debug"
nmake
cd debug
::windeployqt chip.exe
::chip.exe
cd ..
cd ..
goto :eof


:release
call "%VCINSTALLDIR%/bin/vcvars32.bat"
qmake ../chip.pro -spec win32-msvc2010 "CONFIG+=release" "CONFIG+=qml_release"
nmake
cd release
::windeployqt chip.exe
chip.exe
cd ..
cd ..
goto :eof

:clean
rd /s /q build