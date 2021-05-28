%% Subscript: Initialize all things, start the recording

Fs = 50000;
BufferDivisor = 1;
global transformer_ratio;
transformer_ratio=45.76750;
warning('on');
s = daq.createSession('dt');
s.Rate =Fs; %%50kHz
s.NotifyWhenDataAvailableExceeds = s.Rate/BufferDivisor; %% 1/2 Of Available Data is there
ch1=addAnalogInputChannel(s,'DT9816-S(00)', '0', 'Voltage'); % 1: Transformator, 0: Isolationsboard
ch1.Range = [-10 10];

global dataBuffer;

global fileID;
global pathStr;
global datasource;
%datasource="MiniWire.de MariaDB Netzfrequenz";
datasource="MiniWire.de MariaDB Netzfrequenz_Docker";
global username;
username="netzfrequenz";
global password;
password="rJFUTUIGukfYQwRkdawdwaadw23321321";
global tablename;
tablename="measurements";
global connection;
connection=database(datasource,username,password);
global tobeupdated; % This is a struct array for Logging files that cant be uploaded yet


mkdir(append('C:\Users\uj88oval\Desktop\50Hz_Log\',datestr(now,'yyyy\\mmmm\\')));
pathStr = append('C:\Users\uj88oval\Desktop\50Hz_Log\',datestr(now,'yyyy\\mmmm\\dd_'),'Log.txt');
fileID = fopen(pathStr,'a'); % append to file





% This is the normal way.


lh = addlistener(s,'DataAvailable', @(src,evnt) func_analyzeDT9816(src,evnt));




% Use this if you want the Data to be saved in RAM
%global dataBuffer;
%lh=addlistener(s,'DataAvailable', @(src,evnt) func_plotAndSaveDT9816(src, evnt));
%
%
%

s.IsContinuous = true;
startBackground(s);

%stop_DAQ=questdlg('Stop Data Acquisiton?');

%% Evaluating the Data
% Date String : datestr(now, 'yyyy.mm.dd HH:MM:SS,FFF')
% Export as .txt: Format should be 
%YYYY.MM.DD HH:MM:SS.FFF | Frequency | 50Hz Voltage | Maximum Voltage | 100Hz (%)| 150Hz (%)| 200Hz (%)| 250Hz (%)| 300Hz (%)| 350Hz (%)| 400Hz (%)| 450Hz (%)| 500Hz (%)| 550Hz (%)| 600Hz (%)|
%|650Hz (%) | 700Hz (%)| 750Hz (%)| 800Hz (%)| 850Hz (%)| 900Hz (%)| 950Hz (%)| 1000Hz (%)| 1050Hz (%)| 1100Hz (%)| 1150Hz (%)| 1200Hz (%)| 1250Hz (%)|   
% Prozentuale Angaben maximal 2 Stellen nach dem Komma => mehr
% Übersichtlichkeit
%% Evaluating the saved data

%% Stop the complete Data acquisition
s.stop();

fclose(fileID);
close(connection);
delete (lh);    
delete (s);
%%