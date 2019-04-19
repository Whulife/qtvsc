@echo off
if "%1" == "" 		goto build
if /i %1 == clean	goto clean

:build
title qmake and nmake build prompt
set VCINSTALLDIR=C:\Qt\Qt5.5.1MGW\Tools\mingw492_32
set QTDIR=C:/Qt/Qt5.5.1MGW/5.5/mingw492_32
set PATH=%VCINSTALLDIR%/bin;%QTDIR%/bin;%PATH%
::shadow build
set file = build
if NOT exist %file% ( mkdir build
cd build

if "%1" == "" 		goto debug
if /i %1 == debug	goto debug
if /i %1 == release goto release

:release
qmake ../chipmgw.pro "CONFIG+=release" "CONFIG+=qml_release"
make
cd release
goto done

:debug
qmake ../chipmgw.pro "CONFIG+=debug" "CONFIG+=qml_debug"
make
cd debug
goto done

:done
::windeployqt chip.exe
::chipmgw.exe
cd ../..
goto :eof

:clean
rd /S /Q build