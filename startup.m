%% ����
WorkFolder='D:\WORK\MatLab'; % ���� � ������� ������ 
RestoreFolder='D:\WORK\MatLab\BackUp'; % ���� � ����� ��������������
addpath (WorkFolder); % ���������� ������� ����� ��� ������
cd (WorkFolder); % ���������� ������� ����� � �������� ������� 
% pwd %  ���������� ������� ���. ����� 
% winopen(prefdir)  - ��������� ����� � ������� �������������
CurDate = datestr(now, 'yyyy-mm-dd');
WorkFiles=[WorkFolder,'\*'];  % ��������� ���� D:/WORK/MatLab/*  ��� ����������� ���� ������
SettingsFiles=[prefdir,'\*'];  % ��������� ���� C:\Users\������\AppData\Roaming\MathWorks\MATLAB\R2010b\*
WorkRestore=[RestoreFolder,'\',CurDate]; % ��������� ���� � ��������� ����� E:/����������/WORK/MatLab/2013-07-17
SettingsRestore=[WorkRestore,'\Settings']; % ��������� ���� � ��������� ����� E:/����������/WORK/MatLab/Settings
%% ���������� ��������, ����������...
[status, message, messageId] = copyfile(WorkFiles, WorkRestore);
if status==1, disp (['��� ����� �� ����� ',WorkFiles,' ������������ � ����� ',WorkRestore]);
else  disp (['������ �� �����: ',message]); end
[status, message, messageId] = copyfile(SettingsFiles, SettingsRestore);% restore all settins
if status==1,  disp (['����� �������� ������������ � ����� ',SettingsRestore]);
else  disp (['������ �� �����: ',message]); end

%% ������ �������
% reply = input('���������� ���� ���������? y/n [y]: ', 's');
% if isempty (reply),  reply = 'y'; end
% if reply=='y' 
%    disp ('������ ������� ����� ������� � ���� task.txt' )% ����� ���������� ��������� ����� ������. 
%    warning off
%    delete task.txt 
%    diary task.txt % ��������� � ���� "taskl.txt" �� ������ ���� ��������� ����� 
%    % echo on % ��� ������������� ������� echo on � ���� ����
% else disp ('������ ������������ �� �����'), end
%% � ����� m-����� ���������� ��������� �������
clear
warning on
echo off 
%diary off 

% �� �����������
%mkdir(RestoreFolder,CurDate) % ������� ����� E:/����������/WORK/MatLab/2013-07-17
%mkdir(RestoreFolder,'Settings') % ������� ����� E:/����������/WORK/MatLab/Settings