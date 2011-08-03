@echo off

set CWD=%CD%
set TARGETDIR=%ProgramFiles(x86)%\Notepad++\themes

echo Deleting old symbolic links...
del "%TARGETDIR%\solarized_dark.xml"
del "%TARGETDIR%\solarized_light.xml"
echo Done

echo Creating new symbolic links...
mklink "%TARGETDIR%\solarized_dark.xml"  "%CWD%\solarized_dark.xml"
mklink "%TARGETDIR%\solarized_light.xml" "%CWD%\solarized_light.xml""
echo Done
