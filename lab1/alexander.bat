@ECHO OFF
cls
chcp 855
IF -%1==- GOTO NoParemetres
IF NOT EXIST %1/%username% GOTO makeFolder


:Program
net user %username%  > %username%\LogIn.log

GOTO :EOF

:NoParemetres
ECHO You haven't declared all the parametres!
GOTO :EOF

:NoFolder
ECHO There is no such folder!
GOTO :EOF

:makeFolder
mkdir %username%
GOTO :Program