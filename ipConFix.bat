:: ipConFix
:: Author: @byronbytes
:: Version: v4.0.0

color 02
title ipConFix

@echo off

@echo,
@echo,

:::  _        _____            ______ _      
::: (_)      / ____|          |  ____(_)     
::: _ _ __ | |     ___  _ __ | |__   ___  __
::: | | '_ \| |    / _ \| '_ \|  __| | \ \/ /
::: | | |_) | |___| (_) | | | | |    | |>  < 
::: |_| .__/ \_____\___/|_| |_|_|    |_/_/\_\
:::   | |                                    
:::   |_|         
:::
::: 		(@byronbytes)
                           
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

@echo,  
@echo,
echo Please close out of any applications that require internet.
@echo,

echo 1. Renew ipconfig
echo 2. Flush DNS and ARP cache
echo 3. Show ipconfig information
echo 4. Close
set input=
set /p input= Please choose an option:


If %input% == 1 goto FixConfig
If %input% == 2 goto ClearCache
If %input% == 3 goto DebugData
If %input% == 4 goto EndingMessage

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
