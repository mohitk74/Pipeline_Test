
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
sim('Sample_Model_Harness');
simOut = sim('Sample_Model_Harness', 'ReturnWorkspaceOutputs', 'on');
if ~isempty(simOut)
    disp('Model has been simulated');
else
    disp('Model has not been simulated');
end
%--------------------------------------------------------------------------
% test Manager
%-------------------------------------
