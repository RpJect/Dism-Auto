@TITLE ::::::::::::::::::::::::::::::::::::::::::::::: DISM AUTO :::::::::::::::::::::::::::::::::::::::::::::::
@color 0f
REM This Software is created By Rproject
REM https://github.com/RpJect/Dism-Auto
REM
REM This Program Is Using Microsoft Windows DISM.
REM To Fix All Your Proplem type.
REM
REM The Software version 1.0
:1st
@cls
@ECHO OFF
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  **************************** Fix The PC Using DISM METHIODS ***************************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@ECHO                         This Software is created By Rproject.
@echo                                DISM AUTO version 1.0
@ECHO                      This Program Is Using Microsoft Windows DISM.
@ECHO                  Before We Start And help your computer to Get Fixed.
@echo.
@echo.                                   Work For Windows10
@echo.
@echo.
@echo.
@echo.
@ECHO                      Please type the Letter OF Your system Drive
@echo.
@echo.
@ECHO                         To Make Sure By Typing C: Then Dir
@echo.
@echo.                   We Recommended You To Open This Software In Safemode
@echo.
@echo Type Safe "S" To start In Safemode
@echo Or 
set/p   Mode="Type Y To Continue: "
if %Mode%==y goto 2nd
if %Mode%==y goto 2nd
if %Mode%==Safe goto S
if %Mode%==safe goto S
if %Mode%==S goto S
if %Mode%==s goto S

@pause

@exit

------------------------------------------------------------------------------------------------

:S
shutdown.exe /r /o



:2nd
@cls
@ECHO OFF
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  **************************** Fix The PC Using DISM METHIODS ***************************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@ECHO                         This Software is created By Rproject.
@echo                                DISM AUTO version 1.0
@ECHO                      This Program Is Using Microsoft Windows DISM.
@ECHO                  Before We Start And help your computer to Get Fixed.
@echo.
@echo.                                   Work For Windows10
@echo.
@echo.
@echo.
@echo.
@ECHO                      Please type the Letter OF Your system Drive
@echo.
@echo.
@ECHO                         To Make Sure By Typing C: Then Dir
@echo.
@echo.                   We Recommended You To Open This Software In Safemode
@echo.
@echo.
@echo. 
set/p   Drive="Type Your System Source Drive: "

:p
@ECHO. ----------------------------------------------------------------------------------------
@ECHO    Please type the Letter OF Your CD/USB Drive
set /p YourDriveLetter=      (Example E)
@echo.
@echo.
@ECHO. ----------------------------------------------------------------------------------------
@cls
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  **************************** Fix The PC Using DISM METHIODS ***************************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@ECHO                         This Software is created By Rproject.
@echo                                DISM AUTO version 1.0
@ECHO                      This Program Is Using Microsoft Windows DISM.
@ECHO                  Before We Start And help your computer to Get Fixed.
@echo.
@echo.                                   Work For Windows10
@echo.
@echo.
@ECHO ------------------------------------------------------------------------------------------
@echo.
@echo So System Is "%Drive%:\" And Your CD/USB Is "%YourDriveLetter%:\"
@echo.
@echo If You Sure Press [Y] To Continue If Its Not Correct Press [N] To Change It
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
ECHO @REM This Software is created By Rproject  >> "%Drive%:/temp\mor1.cmd
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
ECHO @REM This Software is created By Rproject  >> "%Drive%:/temp\mor2.cmd
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
ECHO @REM This Software is created By Rproject  >> "%Drive%:/temp\mor3.cmd
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
ECHO @REM This Software is created By Rproject  >> "%Drive%:/temp\mor4.cmd
ECHO @REM https://github.com/RpJect/Dism-Auto  >> "%Drive%:/temp\mor4.cmd
ECHO @REM This Program Is Using Microsoft Windows DISM  >> "%Drive%:/temp\mor4.cmd
ECHO @SETLOCAL  >> "%Drive%:/temp\mor4.cmd
ECHO @START /B /W dism /image:%Drive%:\ /cleanup-image /restorehealth /source:%YourDriveLetter%:\sources\install.wim    >> "%Drive%:/temp\mor4.cmd
ECHO @START /B /W dism /image:%Drive%:\ /cleanup-image /restorehealth /source:%YourDriveLetter%:\sources\install.esd    >> "%Drive%:/temp\mor4.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "%Drive%:/temp\mor4.cmd
ECHO @pause    >> "%Drive%:/temp\mor4.cmd
ECHO ECHO. ^& ECHO Clean Complete! >> "%Drive%:/temp\mor4.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%Drive%:/temp"        >> "%Drive%:/temp\mor4.cmd




:R
@color 1f
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

@pause

@exit



:2

start "CMD.EXE" "c:/temp\mor2.cmd" 


@pause

@exit




:3

start "CMD.EXE" "c:/temp\mor3.cmd" 

@pause

@exit




:4

start "CMD.EXE" "c:/temp\mor4.cmd" 

@pause

@exit




