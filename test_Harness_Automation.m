clc;clear;close all;

% reading excel file
data=readtable("Inputs.xlsx");
%--------------------------------------------------------------------------
% reading time data 
t=0:height(data)-1;
time=data.Time;
% height returns the number of rows in the data 
time = t'; % Transpose of the array gives the table
% time = t'; % Transpose of the array gives the table
% -------------------------------------------------------------------------
% valA and valB are two variables that contains the data extracted from
% excel file's column 2 and 3 respectively

% Input for First Variable
valA = data(:,2);
valA = data.A;
% 2 represents column two

% Input for Second Variable
valB = data(:,3);
valB = data.B;
% 3 represents column three
% -------------------------------------------------------------------------
% Converting time data in Seconds
@@ -31,7 +31,7 @@
load_system('and_gate_model');

% Creating the test harness having source as 'From Workspace' and Sink 'Outport'
sltest.harness.create('and_gate_model', 'Name', 'and_gate_model_Harness', 'Source', 'From Workspace', 'Sink', 'Outport');
% sltest.harness.create('and_gate_model', 'Name', 'and_gate_model_Harness', 'Source', 'From Workspace', 'Sink', 'Outport');

% Opening the test Harness model
sltest.harness.open('and_gate_model','and_gate_model_Harness');
@@ -52,15 +52,7 @@

% Opening the test Manager & Running the test cases
sltest.testmanager.view;
result = sltest.testmanager.run(); % Executing the test manager
sltest.testmanager.run();

% Provide the same filename created to store the test results
exampleFile = 'and_gate_model_Results.mldatx';
sltest.testmanager.load(exampleFile);
%-------------------------------------------------------------------------
% Report Generation
sltest.testmanager.report(result,'C:\Users\40674\Downloads\SF_TESTHARNESS\test_repot.pdf',...
    'IncludeTestResults',0,'IncludeComparisonSignalPlots',true,...
    'IncludeSimulationSignalPlots',true,'NumPlotRowsPerPage',3);
%-------------------------------------------------------------------------
%----------------------END OF THE SCRIPT----------------------------------
