ipconfig /release
@echo off
echo The internet may be temporarily disabled, please wait.
@echo on
ipconfig /renew
@echo off
echo ipConFix has completed, you may close this script.
@echo on
pause
