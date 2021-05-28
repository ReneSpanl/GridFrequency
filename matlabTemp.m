fileread('C:\Users\uj88oval\Desktop\50Hz_Log\2020\May\22_Log.txt');
result_data = textscan(txt, '%s %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s |','Delimiter',' | ');
result_data = cellfun(@num2str, result_data, 'un', 0)
formatted = [result_data{1}]
for i=2:28
   formatted = [formatted, result_data{i}];  
end
