%% Test Function func_analyze 
% Use this script to evaluate the function of func_analyze, if it holds up
% with the previous known accuracy of the 50Hz Generator

%load('Waveforms\Capture_DT9816_50k_50Hz_Generator.mat');

frequencies = double.empty;

for i=0:length(dataBuffer)/(Fs/2)-4
   [x,y] = func_analyze(dataBuffer(25000*i+1:25000*(i+1)),Fs);
    frequencies = [frequencies, x];
end
mw_range = range(frequencies);
%%
nexttile;
plot(frequencies);
title('50Hz, ohne TP-Filterung');
%ylim([49.999 50.001]);
%%
nexttile;
iN = 10;
vg = filter(ones(1,iN)/iN, 1, frequencies);
plot(vg(iN+1:end));
ylim([49.999 50.001]);
title('50Hz mit TP-Filterung');
%%

nexttile;
plot(smoothdata(frequencies));
title('50Hz mit Smoothing');
ylim([49.999 50.001]);
%%
nexttile;
h1=histogram(frequencies,'Normalization','probability');
title('Wahrscheinlichkeiten der Frequenzen');