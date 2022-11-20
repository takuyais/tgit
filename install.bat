@rem Need to run as Administrator
@setlocal

set "BIN_DIR=C:\msys64\home\%USERNAME%\.local\bin"

@set script_root=%~dp0

mkdir "%BIN_DIR%" 2>nul
cd /d "%BIN_DIR%"
mklink tgit "%script_root%tgit"

@endlocal
@pause
