function [Frequencies,Harmonics] = func_analyze(inputBuffer,Fs)
% func_analyze for redirecting the bitstream to a function
%   Jegliche Messung kann so recht simpel hineingegeben werden und es wird
%   ein Array für Rückgabewerte erzeugt.

Interpolation =1;
Freq_Offset = 0.003969496709388; %% Frequenz Offset aus Frequenzgenerator: Grund: Clock der Abtastung bei der Samplerate ungenau => Clock an den jeweiligen Eingang des DT9816 bauen
%Freq_Offset=0;
inputBuffer = resample(inputBuffer,Interpolation,1);

% Finden der eigentlich steigenden/fallenden Flanken
rising_edge = find((inputBuffer(1:end-1) <= 0 & inputBuffer(2:end)>0));
crossings = rising_edge;
crossings = crossings(2:end-1);
NumGridPoints = 3;
PeriodsForMedian= 'all';%% Integer oder max
%% Steigende Flanken finden => Windowing für die nachfolgende FFT muss nicht geführt werden
if(PeriodsForMedian == 'all')
   
    timevec_left  = crossings(1)-NumGridPoints:crossings(1)+NumGridPoints;    
    timevec_right = crossings(end)-NumGridPoints:crossings(end)+NumGridPoints;
    
    vector_left  = inputBuffer(timevec_left);
    vector_right = inputBuffer(timevec_right);
    
    zero_cross_left  = interp1(vector_left,timevec_left,0.0,'spline');
    zero_cross_right = interp1(vector_right,timevec_right,0.0,'spline');
    
    Frequencies = Fs*(length(crossings)-1)/((zero_cross_right - zero_cross_left)*Interpolation) +Freq_Offset;
else
    for i = PeriodsForMedian:PeriodsForMedian:length(crossings)-PeriodsForMedian

        timevec_left  = crossings(i)-NumGridPoints:crossings(i)+NumGridPoints+1;    
        timevec_right = crossings(i+PeriodsForMedian)-NumGridPoints:crossings(i+PeriodsForMedian)+NumGridPoints+1;
    
        vector_left  = inputBuffer(timevec_left);
        vector_right = inputBuffer(timevec_right);

        zero_cross_left  = interp1(vector_left,timevec_left,0.0000,'spline');
        zero_cross_right = interp1(vector_right,timevec_right,0.0000,'spline');

        Frequencies(i/PeriodsForMedian) = (PeriodsForMedian*Fs/(zero_cross_right - zero_cross_left)*Interpolation)+Freq_Offset;
    end
end

%% FFT Analyse durch das Spektrum: hierbei sollte der Fokus immer auf die 50, 100, 150 Hz... Regionen liegen.
%fft_vector = inputBuffer(rising_edge(1):rising_edge(end));
%diff = rising_edge(end) -rising_edge(1);
%scaling_factor = length(fft_vector);
%p = 2^nextpow2(length(fft_vector)); %%Bedingung für FFT (Bin  Size = 2^n) ist somit erfüllt
%padding = p - length(fft_vector);
%fft_vector = [fft_vector, zeros(1,padding)];
N = length(inputBuffer);
dF = Fs/(N);
freq_grid = (-N/2*dF:dF:((N/2)-1)*dF);
fft_output = fftshift(fft(inputBuffer,N))*2/N; % one sided spectrum only. Therefor multiply by 2

%plot(freq_grid, abs(fft_output));
%semilogy(freq_grid, abs(fft_output))
Frequency_Points = [50,100,150,200,250,300,350,400,450,500,550,600,650,700,750,800,850,900,950,1000,1050,1100,1150,1200,1250];
Point_Margin = 1;


% Maximum finden fehlt noch
Harmonics = zeros(1,2);

% Da wir einen Spannungsteiler benutzen und einen Transformator wird es
% nötig sein, die Gain Werte zu multiplizieren. Achtung: Es wird noch eine
% AMC1301 Isolationsmessung kommen für die Arbeit.

for i = 1:length(Frequency_Points)
    
    Vector_Points(i) = max(find(freq_grid > (Frequency_Points(i)-Point_Margin) & freq_grid < (Frequency_Points(i) + Point_Margin)));
    
    if i==1
        Harmonics(i) = max(abs(fft_output(Vector_Points(i)-3:Vector_Points(i)+3))); 
    else
        Harmonics(i) = round(max(abs(fft_output(Vector_Points(i)-3:Vector_Points(i)+3)))/(Harmonics(1))*100,3); % make it a percentage
    end
    
   
    
end
end




