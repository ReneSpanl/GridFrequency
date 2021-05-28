% Analyse der Daten nachdem die Dateien aufgezeichnet wurden, bietet viel
% Möglchkeit um dann im Nachhinein Fehler zu finden und zu debuggen.
%
%
%
T_Messung = length(dataBuffer)/Fs;%% (3 Perioden)
Interpolation =1;
N = Fs/4;
Freq_Offset = 0.003993953241583; %% Frequenz Offset aus Frequenzgenerator: Grund: Clock der Abtastung bei der Samplerate ungenau.
%%Fs = 1/Ts;
dF = Fs/(N);
f_vect = (-N/2*dF:dF:((N/2)-1)*dF);

% 
% X_shift = fftshift(fft(x));
% X_scaled = (X_shift /N);
% 
% X_scaled = X_scaled/max(abs(X_scaled));
% X_scaled_dB = mag2db(abs(X_scaled)); 
% plot(f_vect(N/2:N/2+1000), abs(X_scaled(N/2:N/2+1000)));
% semilogy(f_vect(N/2:N/2+1000), abs(X_scaled(N/2:N/2+1000)));


x=dataBuffer;
x_resample = resample(x,Interpolation,1);

%% Interpolate at the Zero Crossings

%nulldurchgang = find((x_resample(1:end-1) >= 0 & x_resample(2:end)<0) | (x_resample(1:end-1) <= 0 & x_resample(2:end)>0)); 
rising_edge = find((x_resample(1:end-1) <= 0 & x_resample(2:end)>0));
falling_edge = find((x_resample(1:end-1) >= 0 & x_resample(2:end)<0));

take_Falling_edge = 0;

if(take_Falling_edge)
    
    crossings = falling_edge;
else
    
    crossings = rising_edge;
end

%% Frequenzmessung: 
CurFreq = double.empty;
NumGridPoints = 1;
PeriodsForMedian=10;
 % Optimization : vec_left(n+1) = vec_right(n)
for i = PeriodsForMedian:PeriodsForMedian:length(crossings)-PeriodsForMedian

    timevec_left  = crossings(i)-NumGridPoints:crossings(i)+NumGridPoints+1;    
    timevec_right = crossings(i+PeriodsForMedian)-NumGridPoints:crossings(i+PeriodsForMedian)+NumGridPoints+1;
    
    vector_left  = x_resample(timevec_left);
    vector_right = x_resample(timevec_right);
    
    zero_cross_left  = interp1(vector_left,timevec_left,0.0000,'linear');
    zero_cross_right = interp1(vector_right,timevec_right,0.0000,'linear');
    
    CurFreq(i/PeriodsForMedian) = (PeriodsForMedian*Fs/(zero_cross_right - zero_cross_left)*Interpolation)+Freq_Offset;
end

    
    
% for i = 2*PeriodsForMedian:2*PeriodsForMedian:length(nulldurchgang)-2*PeriodsForMedian
%     
%     testvec_left  = x_resample(nulldurchgang(i)-NumGridPoints:nulldurchgang(i)+NumGridPoints+1);
%     testvec_right = x_resample(nulldurchgang(i+2*PeriodsForMedian)-NumGridPoints:nulldurchgang(i+2*PeriodsForMedian)+NumGridPoints+1);
%     
%     timevec_left = nulldurchgang(i)-NumGridPoints:nulldurchgang(i)+NumGridPoints+1;
%    
%     % Way to optimize: locleft_n+1 = locright_n;
%     locleft = interp1(testvec_left,timevec_left,0.01,'spline');
%     timevec_right = nulldurchgang(i+2*PeriodsForMedian)-NumGridPoints:nulldurchgang(i+2*PeriodsForMedian)+NumGridPoints+1;
%     locright = interp1(testvec_right,timevec_right,0.0,'spline');
%     
%     
%     %%locleft = 
%     
%     CurFreq(i/(2*PeriodsForMedian)) = (PeriodsForMedian*Fs/(locright - locleft)*Interpolation)+Freq_Offset;
% %     if(CurFreq(i/(2*PeriodsForMedian))>55 || CurFreq(i/(2*PeriodsForMedian)) <45)
% %         CurFreq(i/(2*PeriodsForMedian)) = CurFreq(i/(2*PeriodsForMedian)-1);
% %     end 
% end


mw_range = range(CurFreq);
mw_std = std(CurFreq);
mw_mean = mean(CurFreq);



nexttile;
plot(CurFreq);
title('50Hz, ohne TP-Filterung');
ylim([49.95 50.05]);

nexttile;
iN = 10;
vg = filter(ones(1,iN)/iN, 1, CurFreq);
plot(vg(iN+1:end));
ylim([49.95 50.05]);
title('50Hz mit TP-Filterung');


nexttile;
plot(smoothdata(CurFreq));
title('50Hz mit Smoothing');
ylim([49.95 50.05]);

nexttile;
histogram(CurFreq,'Normalization','probability');
title('Wahrscheinlichkeiten der Frequenzen');


% %% ZoomFFT
% BWOfInterest = 55-45;
% Fc = (45 + 55)/2;
% fftlen =32;
% BWFactor = floor(Fs/BWOfInterest);
% % B = designMultirateFIR(1,BWFactor);
% % D = dsp.FIRDecimator('DecimationFactor',BWFactor,'Numerator',B);
% % for k = 1:10
% %     % Run a few times to eliminate transient in filter
% %     x = dataBuffer(1:32);
% %     % Mix down to DC
% %     %%indVect = (0:numel(x)-1).' + (k-1) * size(x,1);
% %     y = x .* exp(-2*pi*indVect*Fc*1j/Fs);
% %     % Filter through FIR decimator
% %     xd = D(y);
% % end
% zfft= zoomFFT(BWFactor,Fc,Fs);
% for k=1:100
%     x = dataBuffer(1:25000)
%     z = zfft(x);
%     z = fftshift(z);
%     
% end