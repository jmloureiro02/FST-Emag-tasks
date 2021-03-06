%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\João Loureiro\Desktop\ALL0006\F0006CH1.CSV
%
% Auto-generated by MATLAB on 11-Apr-2021 00:39:05

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 5);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Var1", "Var2", "Var3", "VarName1", "VarName2"];
opts.SelectedVariableNames = ["VarName1", "VarName2"];
opts.VariableTypes = ["string", "string", "string", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["Var1", "Var2", "Var3"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Var1", "Var2", "Var3"], "EmptyFieldRule", "auto");

% Import the data
tbl = readtable("C:\Users\João Loureiro\Desktop\ALL0006\F0006CH1.CSV", opts);

%% Convert to output type
t220u = tbl.VarName1;
U220 = tbl.VarName2;

%% Clear temporary variables
clear opts tbl
