color 02

@echo off
echo ipConFix will temporarily disable internet connectivity, please close anything that may use internet before running this.
@echo on
pause

ipconfig /release
ipconfig /release6

ipconfig /renew
ipconfig /renew6
ipconfig /flushdns

@echo off
echo ipConFix has ran through all commands neccesary, you may close the application now.
@echo on
pause
