:: Install this script on a computer that has both internet access (Wadsworth network) and a free wireless adapter.
:: Use the wireless adapter to connect to HOST2's wireless network (SSSID = goldfinger; NB: unfortunately only WEP
:: encryption seems to work when trying to connect a WinXP client to the Win7 host).
:: Wait about a week and a half for the IP addresses to self-assign to exactly what they were last time you did this.
:: Then launch this script.  Type the Admin@HOST2 password to open the samba share.
:: If it fails, unplug the wired wadsworth network connection, retry, and plug back in after it succeeds.
:: The H:\ drive on your internet-enabled computer is now the Desktop of HOST2 - launch the Hg workbench from one of
:: the repositories that live there.

@SET DRIVE=H
@NET USE %DRIVE%: \\Host2\Users\Admin\Desktop * /USER:Admin && start %DRIVE%:\ && exit
@PAUSE