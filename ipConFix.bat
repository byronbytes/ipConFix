:: ipConFix
:: Author: @byronbytes
:: Version: v3.0.1

color 02
title ipConFix

@echo off
echo ipConFix will temporarily disable internet connectivity, please close anything that may require the internet before running this tool.

echo Please choose an option:
echo 1. Renew ipconfig
echo 2. Flush DNS and ARP cache
echo 3. Show ipconfig information
echo 4. Close
pause

If %input% == 1 goto FixConfig
If %input% == 2 goto ClearCache
If %input% == 3 goto DebugData
If %input% == 4 echo Now Closing...

@echo on

:FixConfig
:: Releases IP information, currently there is no IP connected to the user.
ipconfig /release 
ipconfig /release6
:: Renews IP information, there is a new IP is being reassigned to the user.
ipconfig /renew
ipconfig /renew6
goto EndingMessage

:ClearCache
:: Clears the DNS and ARP cache.
arp -a -d
ipconfig /flushdns
goto EndingMessage


:DebugData
:: Lists through ALL ipconfig commands, helpful for debugging or troubleshooting.
ipconfig /displaydns
ipconfig /showclassid
pause
goto EndingMessage


:EndingMessage
pause
