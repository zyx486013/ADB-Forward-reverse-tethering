@echo on
taskkill /im adb.exe /f
taskkill /im wxray.exe /f
::notes use the same adb with Vysor, if localhost not work, use 127.0.0.1
adb.exe forward tcp:18630 tcp:8388
%~dp0\wxray.exe
pause
