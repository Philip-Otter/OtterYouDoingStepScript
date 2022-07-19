::===============================================::
::Philip Otter                                   ::
::07/18/2022                                     ::
::                                               ::
::This is my batch script that adds a commented  ::
::header box (like this one) to the beginning of ::
::A given batch file. This should help me        ::
::personally save time whenever I want to write  ::
::a new script.                                  ::
::===============================================::


@echo off
echo ::===============================================::
echo ::                .BAT HEAD 1.0.0                ::
echo ::                  Philip Otter                 ::
echo ::                                               ::
echo ::                Created July 2022              ::
echo ::===============================================::
echo.
echo Please enter the file name (with extension) that you would like to add a header to:  
echo.
set /p Input=
echo.
echo Now can I also have your name?
set /p Name=

:continue
if exist %Input% (
    goto :doesExist
) else (
    goto :doesNotExist
)

:doesExist

:: Deletes possible old temp files and makes a new one
del BHAtemp.bat
cls
type %Input% > BHAtemp.bat

:: The box spacing is set to match my name length by default.
:: This first line should overwrite the input file.
echo::===============================================:: > %Input%
echo::%Name%                                   :: >> %Input%
echo::%date%                                 :: >> %Input%
echo::                                               :: >> %Input%
echo::Info                                           :: >> %Input%
echo::===============================================:: >> %Input%
type BHAtemp.bat >> %input%

cls
echo %input% now reads:  
echo.
echo.
type %input%
echo.
echo.
:: Default for choice is y or n
choice /C YN /M "Would you like to revert your file?"
if ERRORLEVEL 2 goto :Keep

:: Reverts our file to original
type BHAtemp.bat > %Input%
del BHAtemp.bat
cls
echo your file has been reverted and now reads:
echo.
type %Input%
echo.
pause
exit


:doesNotExist
echo File does not exist within the current directory!
timeout /t 15
exit


:cleanup
del BHAtemp.bat
exit


:keep
del BHAtemp.bat
echo Okay! Goodbye!
pause
exit


:delOldTemp
del BHAtemp.bat
goto :continue