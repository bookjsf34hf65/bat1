@ECHO OFF&PUSHD %~DP0 &TITLE wifi����鿴��
mode con cols=60 lines=29
color 0E

echo Ŀǰ�ɹ��鿴��WiFi�б��뿴�·����û������ļ���
echo .
netsh wlan show profiles
echo .
set /p user_input=������Ҫ�鿴�����ȫ����Ȼ�󰴻س�����
:showpass
echo.
netsh wlan show profile name=%user_input% key=clear
echo.
pause
exit