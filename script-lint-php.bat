
@echo off
for /R %%f in (*.php) do (
    echo %%f | findstr /I "\\vendor\\" >nul
    if errorlevel 1 (
        php -l "%%f"
    )
)

rem pause