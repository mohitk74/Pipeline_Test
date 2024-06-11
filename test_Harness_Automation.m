clc;clear;close all;
% reading excel file

% 3 represents column three
% -------------------------------------------------------------------------
% Converting time data in Seconds
% time = seconds(time);
%
% % Creating Timetable for the both variables & loading them to the workspace
% % Note : Use the same Input variable name as given in the model
% A = timetable(time,valA);
% B = timetable(time,valB);
%--------------------------------------------------------------------------
% Loading the simulink Model
modelName='Sample_Model';
open_system(modelName);
% Creating the test harness having source as 'From Workspace' and Sink 'Outport'
sltest.harness.create(modelName, 'Name', 'Sample_Model_Harness', 'Source', 'From Workspace', 'Sink', 'Outport');
% Opening the test Harness model
sltest.harness.open(modelName,'Sample_Model_Harness');
%--------------------------------------------------------------------------
% test Manager
tf = sltest.testmanager.TestFile('Sample_Model_Results.mldatx');
ts = getTestSuites(tf);
tc = getTestCases(ts);
% To provide the Sample Model & Test Harness Model to the Test Manager
setProperty(tc,'Model',modelName)
setProperty(tc, 'HarnessName', 'Sample_Model_Harness', 'HarnessOwner', modelName);
% Capturing the Baseline
baseline = captureBaselineCriteria(tc,'Sample_Model_Baseline.xlsx',true);
sc = getSignalCriteria(baseline);
sc(1).AbsTol = 9;
% Opening the test Manager & Running the test cases
sltest.testmanager.view;
sltest.testmanager.run();
%-------------------------------------------------------------------------
%----------------------END OF THE SCRIPT----------------------------------
