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
echo ::               Batch Header Adder              ::
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
echo::===============================================:: >> %Input%
echo::%Name%                                   :: >> %Input%
echo::%date%                                 :: >> %Input%
echo::                                               :: >> %Input%
echo::Info                                           :: >> %Input%
echo::===============================================:: >> %Input%

echo %input% now reads:  
echo.
type %input%
:: Default for choice is y or n
choice /M "Would you like to revert your file?"
if ERRORLEVEL ==1 goto :revert
if ERRORLEVEL ==2 goto :keep




:doesNotExist
echo File does not exist within the current directory!
timeout /t 15
exit


:cleanup
del BHAtemp.bat
exit

:revert
type BHAtemp.bat > %Input%
del BHAtemp.bat
echo your file has been reverted and now reads:
type %Input%
pause
exit


:keep
del BHAtemp.bat
echo Goodbye!
pause
exit

:delOldTemp
del BHAtemp.bat
goto :continue