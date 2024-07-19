@ECHO OFF
echo disko laivos vietos naikinimas
echo per cmd: shredder.cmd failas.ext C:/test/ C:/test/log.txt
echo parametras 1: %1
echo parametras 2: %2
echo parametras 3: %3
echo Skripto pradžia: >> %3
date /T >> %3
time /T >> %3
echo duomenu rasymas i laisva vieta...
for /L %%i in (1,1,10) do (
    copy %1 %2%%i.tmp > nul
)
echo trinami temp failai...
for /L %%i in (1,1,10) do (
    del %2%%i.tmp > nul
)
echo galas: >> %3
date /T >> %3
time /T >> %3
:END
echo done
pause
