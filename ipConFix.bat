color 02

@echo off
echo v2.0 - byronbytes
echo ipConFix will temporarily disable internet connectivity, please close anything that may require internet activity before running this.
@echo on
pause

:: Releases IP information, currently there is no more IP connected to the user.
ipconfig /release 
ipconfig /release6

:: Additionally, clears DNS + ARP cache.
arp -a -d
ipconfig /flushdns

:: Renews IP information, IP is being reassigned to the user.
ipconfig /renew
ipconfig /renew6


@echo off
echo ipConFix has ran through all commands neccesary, you may close the application now.
@echo on
pause
