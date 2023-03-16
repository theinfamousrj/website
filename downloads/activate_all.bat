::activate_all.bat by rj
@ECHO OFF

@SET slmgr=C:\Windows\System32\slmgr.vbs
@SET ospp1=C:\"Program Files (x86)"\"Microsoft Office"\Office14\OSPP.vbs
@SET ospp2=C:\"Program Files"\"Microsoft Office"\Office14\OSPP.vbs

ECHO Please make sure you are connected to the appropriate domain!
ECHO =============================================================

PAUSE

ECHO Adding kms.westga.edu...
IF EXIST %slmgr% (
  cscript %slmgr% -skms kms.westga.edu
) ELSE (
  ECHO %slmgr% not found!
)

PAUSE

ECHO Forcing activation for MS Office...
IF EXIST %ospp1% (
  cscript %ospp1% /act
) ELSE (
  cscript %ospp2% /act
)

PAUSE

ECHO Forcing activation for Windows OS...
IF EXIST %slmgr% (
  cscript %slmgr% -ato
) ELSE (
  ECHO %slmgr% still not found...
)

PAUSE