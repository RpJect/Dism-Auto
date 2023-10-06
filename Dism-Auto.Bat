@TITLE ::::::::::::::::::::::::::::::::::::::::::::::: DISM AUTO :::::::::::::::::::::::::::::::::::::::::::::::
@color 02
@ECHO OFF
REM This Software is created By RpJect
REM https://github.com/RpJect/Dism-Auto
REM
REM This Program Is Using Microsoft Windows DISM.
REM To Fix All Your Proplem type.
REM
REM The Software version 1.0

:: This Software is created By RpJect
:: https://github.com/RpJect/Dism-Auto
::
:: This Program Is Using Microsoft Windows DISM.
:: To Fix All Your Proplem type.
::
:: The Software version 1.0


@echo off

if "%SAFEBOOT_OPTION%"=="" goto normal

echo This computer is in safe mode!

goto 2nd

:normal
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  **************************** Fix The PC Using DISM METHIODS ***************************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@ECHO                         This Software is created By RpJect.
@echo                                DISM AUTO version 1.0
@ECHO                      This Program Is Using Microsoft Windows DISM.
@echo.                                 Work For Windows10
@echo.
@ECHO                  Before We Start And help your computer to Get Fixed.
@echo.
@echo                         1- Find Your system Drive And Your USB/CD
@ECHO                            type A Letter Like "C:"
@echo                            To Make Sure Type "Dir"
@echo.                              
@ECHO.                        2- Choose Yor Mode                              
@echo.
@echo.                 We Recommended You To Open This Software In Safemode
@echo.
@echo.
@echo Type "S" To Get In To Safemode "Recommended"
@echo OR 
timeout /t 3 /nobreak > NUL
set/p   Mode="Type "Y" To Continue In Normalmode: "
if %Mode%==y goto 2nd
if %Mode%==Y goto 2nd
if %Mode%==Safe goto S
if %Mode%==safe goto S
if %Mode%==S goto S
if %Mode%==s goto S

@pause

@exit

------------------------------------------------------------------------------------------------

:S
shutdown.exe /r /o

Exit


:2nd
@color 02
@cls
@ECHO OFF
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  **************************** Fix The PC Using DISM METHIODS ***************************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@ECHO                         This Software is created By RpJect.
@echo                                DISM AUTO version 1.0
@ECHO                      This Program Is Using Microsoft Windows DISM.
@ECHO                  Before We Start And help your computer to Get Fixed.
@echo.
@echo.                                 Work For Windows10
@echo.
@echo.
@echo.
@echo.
@ECHO                      Please type The Letter OF Your system Drive
@echo.
@echo.                         
@echo.
@echo.                   We Recommended You To Open This Software In Safemode
@echo.
@echo.
@echo. 
set/p   Drive="Type Your System Source Drive: "

IF EXIST %Drive%:\Windows (
    goto p
) ELSE (
timeout /t 2 /nobreak > NUL
    echo Your System Source Drive Is Not %Drive%:\
	pause
	goto 2nd 
	
)

:p
@ECHO. ----------------------------------------------------------------------------------------
@ECHO    Please type the Letter OF Your CD/USB Drive
set /p YourDriveLetter=      (Example E)

IF EXIST %YourDriveLetter%:\sources (
    goto 3rd
) ELSE (
echo.
timeout /t 2 /nobreak > NUL
    echo Your CD/USB Is Not %YourDriveLetter%:\
echo.
	goto L 
	
)

:L
@ECHO Type (R) To Retype Or Type (Y) To Continue Without CD\USB
set /p TYPO=
if %TYPO%==r goto CD 
if %TYPO%==R goto CD 
if %TYPO%==Y goto 3rd
if %TYPO%==y goto 3rd
pasue
:CD
@color 02
@cls
@ECHO OFF
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  **************************** Fix The PC Using DISM METHIODS ***************************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@ECHO                         This Software is created By RpJect.
@echo                                DISM AUTO version 1.0
@ECHO                      This Program Is Using Microsoft Windows DISM.
@ECHO                  Before We Start And help your computer to Get Fixed.
@echo.
@echo.                                 Work For Windows10
@echo.
@echo.
@echo.
@echo.
@ECHO                      Please type The Letter OF Your system Drive
@echo.
@echo.                         
@echo.
@echo.                   We Recommended You To Open This Software In Safemode
@echo.
@echo.
@echo. 
@ECHO. ----------------------------------------------------------------------------------------
@ECHO    Please type the Letter OF Your CD/USB Drive
set /p YourDriveLetter=      (Example E)

IF EXIST %YourDriveLetter%:\sources (
    goto 3rd
) ELSE (
echo.
timeout /t 2 /nobreak > NUL
    echo Your CD/USB Is Not %YourDriveLetter%:\
goto L 
	
)
@echo.
@echo.
@ECHO. ----------------------------------------------------------------------------------------
:3rd
@cls
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  **************************** Fix The PC Using DISM METHIODS ***************************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@ECHO                         This Software is created By RpJect.
@echo                                DISM AUTO version 1.0
@ECHO                      This Program Is Using Microsoft Windows DISM.
@ECHO.                  
@echo.
@echo.                                 Work For Windows10

@echo.
@ECHO ------------------------------------------------------------------------------------------
color 1F
@echo.                                                                        
@echo                                     almost ready                                                    
@echo.                                                                       
@echo                   ***********************************************                                                                                                                                       
@echo                   So System Is "%Drive%:\" And Your CD/USB Is "%YourDriveLetter%:\" 
@echo.
@echo                   ***********************************************
@echo.
@echo.
@echo If You Sure Type [Y] To Continue If You Want To Make Changes Type [N] To Change It
@echo.
@echo.To Exit Type [E]
@echo.
@ECHO ------------------------------------------------------------------------------------------
set/p "cho="
if %cho%==y goto 1
if %cho%==Y goto 1
if %cho%==N goto 2nd
if %cho%==n goto 2nd
if %cho%==E goto E
if %cho%==e goto E
if %cho%==E goto E
if %cho%==e goto E

@pause

@exit

------------------------------------------------------------------------------------------------

:1

MKDir "%Drive%:/temp

:Mor1
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "%Drive%:/temp\mor1.cmd
ECHO @REM This Software is created By RpJect.  >> "%Drive%:/temp\mor1.cmd
ECHO @REM https://github.com/RpJect/Dism-Auto  >> "%Drive%:/temp\mor1.cmd
ECHO @REM This Program Is Using Microsoft Windows DISM  >> "%Drive%:/temp\mor1.cmd
ECHO @SETLOCAL  >> "%Drive%:/temp\mor1.cmd
ECHO @START /B /W DISM /Online /Cleanup-Image /RestoreHealth /Source:%Drive%:\ESD\Windows\sources\install.ESD   >> "%Drive%:/temp\mor1.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "%Drive%:/temp\mor1.cmd
ECHO @pause    >> "%Drive%:/temp\mor1.cmd
ECHO ECHO. ^& ECHO Clean Complete! >> "%Drive%:/temp\mor1.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%Drive%:/temp"        >> "%Drive%:/temp\mor1.cmd


:Mor2
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "%Drive%:/temp\mor2.cmd
ECHO @REM This Software is created By RpJect.  >> "%Drive%:/temp\mor2.cmd
ECHO @REM https://github.com/RpJect/Dism-Auto  >> "%Drive%:/temp\mor2.cmd
ECHO @REM This Program Is Using Microsoft Windows DISM  >> "%Drive%:/temp\mor2.cmd
ECHO @SETLOCAL  >> "%Drive%:/temp\mor2.cmd
ECHO @START /B /W dism /image:%Drive%:\ /cleanup-image /restorehealth /source:%Drive%:\windows /scratchdir:%Drive%:\temp   >> "%Drive%:/temp\mor2.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "%Drive%:/temp\mor2.cmd
ECHO @pause    >> "%Drive%:/temp\mor2.cmd
ECHO ECHO. ^& ECHO Clean Complete! >> "%Drive%:/temp\mor2.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%Drive%:/temp"        >> "%Drive%:/temp\mor2.cmd

:Mor3
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "%Drive%:/temp\mor3.cmd
ECHO @REM This Software is created By RpJect.  >> "%Drive%:/temp\mor3.cmd
ECHO @REM https://github.com/RpJect/Dism-Auto  >> "%Drive%:/temp\mor3.cmd
ECHO @REM This Program Is Using Microsoft Windows DISM  >> "%Drive%:/temp\mor3.cmd
ECHO @SETLOCAL  >> "%Drive%:/temp\mor3.cmd
ECHO @START /B /W dism /image:%Drive%:\ /cleanup-image /restorehealth /source:%Drive%:\windows /scratchdir:%Drive%:\temp   >> "%Drive%:/temp\mor3.cmd
ECHO @START /B /W sfc /scannow /offbootdir=%Drive%\ /offwindir=%Drive%\windows    >> "%Drive%:/temp\mor3.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "%Drive%:/temp\mor3.cmd
ECHO @pause    >> "%Drive%:/temp\mor3.cmd
ECHO ECHO. ^& ECHO Clean Complete! >> "%Drive%:/temp\mor3.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%Drive%:/temp"        >> "%Drive%:/temp\mor3.cmd


:Mor4
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "%Drive%:/temp\mor4.cmd
ECHO @REM This Software is created By RpJect.  >> "%Drive%:/temp\mor4.cmd
ECHO @REM https://github.com/RpJect/Dism-Auto  >> "%Drive%:/temp\mor4.cmd
ECHO @REM This Program Is Using Microsoft Windows DISM  >> "%Drive%:/temp\mor4.cmd
ECHO @SETLOCAL  >> "%Drive%:/temp\mor4.cmd
ECHO IF EXIST %YourDriveLetter%:\sources\install.wim (          >> "%Drive%:/temp\mor4.cmd
ECHO     START /B /W dism /image:%Drive%:\ /cleanup-image /restorehealth /source:%YourDriveLetter%:\sources\install.wim          >> "%Drive%:/temp\mor4.cmd
ECHO ) ELSE (          >> "%Drive%:/temp\mor4.cmd
ECHO     START /B /W dism /image:%Drive%:\ /cleanup-image /restorehealth /source:%YourDriveLetter%:\sources\install.esd          >> "%Drive%:/temp\mor4.cmd
ECHO )          >> "%Drive%:/temp\mor4.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "%Drive%:/temp\mor4.cmd
ECHO @pause    >> "%Drive%:/temp\mor4.cmd
ECHO ECHO. ^& ECHO Clean Complete! >> "%Drive%:/temp\mor4.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%Drive%:/temp"        >> "%Drive%:/temp\mor4.cmd





:R
@color 0f
@cls
@echo.
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  **************************** Fix The PC Using DISM METHIODS ***************************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@echo.
@ECHO              Please Type The Letter for The Option You Want To Perform.
@ECHO              All Of These Options Should Help Your Computer To Get Fixed.
@ECHO.
@echo.
@echo.                              --------------------
@echo                               (Choose your option) 
@echo.                              --------------------
@echo.
@echo.
@echo                      Type      "A"    ::  Online DISM  Work in Normal Mode :: { Recommended In Safe Mode!}
@echo.
@echo                      Type      "B"    ::  Online DISM  From CD
@echo.
@echo                      Type      "C"    ::  Offline DISM From CD + System Check UP ::{ Long Time But Worth }
@echo.
@echo                      Type      "D"    ::  Offline DISM From CD  ::{ SOS }
@echo.
@echo                      Type      "E"    :: "Exit"
set/p "cho="
if %cho%==A goto 1
if %cho%==a goto 1
if %cho%==B goto 2
if %cho%==b goto 2
if %cho%==C goto 3
if %cho%==c goto 3
if %cho%==D goto 4
if %cho%==d goto 4
if %cho%==E goto E
if %cho%==e goto E

:E
@exit
@pause

@exit

------------------------------------------------------------------------------------------------
:1

start "CMD.EXE" "c:/temp\mor1.cmd" 



@exit



:2

start "CMD.EXE" "c:/temp\mor2.cmd" 




@exit




:3

start "CMD.EXE" "c:/temp\mor3.cmd" 



@exit




:4

start "CMD.EXE" "c:/temp\mor4.cmd" 



@exit




