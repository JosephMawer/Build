:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Global variables
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

CALL %* 
EXIT /B


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Global functions
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:CopyPluginFiles

ECHO[
ECHO Copying Firewall Plugin files ...

SET FIREWALL_ROOT=%ROOT_DIR%Plugins\Plugin_Firewall\bin\%SOLUTIONCONFIG%\
SET FIREWALL_DSTDIR=%PLUGIN_DIR%Plugin_Firewall\

MKDIR %FIREWALL_DSTDIR%

ECHO COPY %FIREWALL_ROOT%Plugin_Firewall.dll %FIREWALL_DSTDIR%
COPY %FIREWALL_ROOT%Plugin_Firewall.dll %FIREWALL_DSTDIR% >>%OUTPUTFILE%
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%

EXIT /B 0