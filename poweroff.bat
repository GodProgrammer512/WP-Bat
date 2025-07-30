@echo off
openfiles >nul 2>&1 || (
	powershell -Command "Start-Process '%~f0' -Verb runAs"
	exit /b
)
shutdown /s /f /t 15 /c \"Your computer will shutdown in 15 seconds.\"
exit
