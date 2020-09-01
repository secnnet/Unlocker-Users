eREM ===   Script Name: The Unlocker   
@Title The Unlocker
@echo off
color E
cls

REM === Start of The Unlocker
	Set /p ADUserName= Type Username Account:
	cls
	echo  ========================================================
	echo  --------------------------------------------------------
	echo   Author: Bilel Graine - Date %DATE% - 
	echo   1. Unlock User Account 
	echo   2. Rest User Password  
	echo  --------------------------------------------------------
	echo  ========================================================	
	Set INPUT=
	Set /P INPUT=Pick a Number:
	
	IF '%INPUT%'=='1' GOTO:UnLockOnly 
	IF '%INPUT%'=='2' GOTO:UnlockandReset
	
	:UnLockOnly 
	Net user %ADUserName% /Domain /Active:yes
	cls
	color E
	echo ========================================================
	echo --------------------------------------------------------
	echo   ## Username %ADUserName% Unlocked
	echo --------------------------------------------------------
	echo   ## Hit "Enter" to EXIT 
	echo --------------------------------------------------------
	echo ========================================================
	pause
	goto fin 	
	
	:UnlockandReset
	Net user %ADUserName% * /Domain /Active:yes
	cls
	color E
	echo ========================================================
	echo --------------------------------------------------------
	echo   ## Password Changed for %ADUserName% 
	echo --------------------------------------------------------
	echo   ## Hit "Enter" to EXIT  
	echo --------------------------------------------------------
	echo ========================================================
	pause 	
	goto fin	