@ECHO OFF&PUSHD %~DP0 &TITLE 1KBwifi������
mode con cols=60 lines=29
color 00

:menu
cls
echo.
echo ��ӭʹ��1KBwifi
echo ==============================
echo.
echo ����1���޸�wifi���ƺ�����
echo.
echo ����2���ر�wifi
echo.
echo ����3���鿴wifi��Ϣ
echo.
echo ����4������wifi
echo.
echo ==============================
echo.
echo.

set /p user_input=���������֣�
if %user_input% equ 1 goto 1 
if %user_input% equ 2 goto 2 
if %user_input% equ 3 goto 3 
if %user_input% equ 4 goto 4 

:other
echo.
echo û�н����κβ���
echo.
pause
exit
:1
@echo off
@netsh wlan set hostednetwork mode=allow
set /p wifi_name=����wifi���ƣ�
set /p wifi_pass=����wifi���룺
@netsh wlan set hostednetwork ssid=%wifi_name% key=%wifi_pass%
echo.
echo wifi�Ѿ��޸ĳɹ������ƣ�%wifi_name% ���룺%wifi_pass%
echo.
netsh wlan start hostednetwork
echo.
pause
exit
:2
@echo off
@netsh wlan stop hostednetwork
echo.
echo wifi�Ѿ��ر�
echo.
pause
exit
:3
@echo off
netsh wlan show hostednetwork
netsh wlan show hostednetwork setting=security
echo.
pause
goto menu
:4
@echo off
@netsh wlan set hostednetwork mode=allow
@netsh wlan start hostednetwork
netsh wlan show hostednetwork
netsh wlan show hostednetwork setting=security
echo.
pause
exit