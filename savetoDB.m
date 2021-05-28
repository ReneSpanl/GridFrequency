function [outputArg1,outputArg2] = savetoDB(Struct)
%SAVETODB Summary of this function goes here
%   Detailed explanation goes here
global datasource;
global username;
global password;
global tablename;
connection=database(datasource,username,password);

try
tic
sqlwrite(connection,tablename,Struct);
toc
catch 
end 


end

