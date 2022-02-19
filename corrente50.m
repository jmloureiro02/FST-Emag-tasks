%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\João Loureiro\Desktop\ALL0000\F0000CH2.CSV
%
% Auto-generated by MATLAB on 03-Apr-2021 22:22:08

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 5);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Var1", "Var2", "Var3", "VarName4", "VarName5"];
opts.SelectedVariableNames = ["VarName4", "VarName5"];
opts.VariableTypes = ["string", "string", "string", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["Var1", "Var2", "Var3"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Var1", "Var2", "Var3"], "EmptyFieldRule", "auto");

% Import the data
tbl = readtable("C:\Users\João Loureiro\Desktop\ALL0000\F0000CH2.CSV", opts);

%% Convert to output type
t50i = tbl.VarName4;
I50 = tbl.VarName5;

%% Clear temporary variables
clear opts tbl