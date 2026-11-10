@echo off
TITLE UNNAT ERP 9+ (Enterprise Edition) - Windows Release Builder
color 0A

echo ======================================================================
echo          UNNAT ERP 9+ (ENTERPRISE EDITION) - WINDOWS BUILDER         
echo ======================================================================
echo.

echo [1/4] Checking Flutter environment...
call flutter --version
if %ERRORLEVEL% NEQ 0 (
    color 0C
    echo [ERROR] Flutter SDK is not found in PATH!
    echo Please install Flutter or add Flutter to your system PATH.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [2/4] Cleaning previous builds and fetching dependencies...
call flutter clean
call flutter pub get
if %ERRORLEVEL% NEQ 0 (
    color 0C
    echo [ERROR] flutter pub get failed!
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [3/4] Compiling Windows Native Release Executable (x64)...
call flutter build windows --release
if %ERRORLEVEL% NEQ 0 (
    color 0C
    echo [ERROR] Windows compilation failed!
    echo Please make sure 'Desktop development with C++' is installed via Visual Studio Installer.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [4/4] Verifying Build Output...
if exist "build\windows\x64\runner\Release\unnat_erp.exe" (
    echo.
    echo ======================================================================
    echo  SUCCESS! UNNAT ERP 9+ Windows Release Built Successfully!
    echo ======================================================================
    echo  Release Directory: build\windows\x64\runner\Release\
    echo  Main Executable   : build\windows\x64\runner\Release\unnat_erp.exe
    echo ======================================================================
    echo.
    explorer.exe "build\windows\x64\runner\Release"
) else if exist "build\windows\runner\Release\unnat_erp.exe" (
    echo.
    echo ======================================================================
    echo  SUCCESS! UNNAT ERP 9+ Windows Release Built Successfully!
    echo ======================================================================
    echo  Release Directory: build\windows\runner\Release\
    echo  Main Executable   : build\windows\runner\Release\unnat_erp.exe
    echo ======================================================================
    echo.
    explorer.exe "build\windows\runner\Release"
)

pause
