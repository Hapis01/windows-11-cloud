@echo off
:loop
echo Workflow masih berjalan... %time%
timeout /t 60 >nul
goto loop

