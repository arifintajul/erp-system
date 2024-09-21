@echo off
for /R %%f in (*.php) do (
    php -l "%%f"
)
pause