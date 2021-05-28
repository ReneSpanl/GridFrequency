function func_analyzeDT9816(src,event)
%FUNC_ANALYZEDT9816 Summary of this function goes here
%  
tic
Fs = 50000;
buf = event.Data';
global fileID;
global lastValues;
global pathStr;
global connection;
global datasource;
global username;
global password;
global tablename;
global transformer_ratio;
global tobeupdated;


buf = buf*transformer_ratio;
curPathStr = append('C:\Users\uj88oval\Desktop\50Hz_Log\',datestr(now,'yyyy\\mmmm\\dd_'),'Log.txt');
if pathStr == curPathStr
else
   mkdir(append('C:\Users\uj88oval\Desktop\50Hz_Log\',datestr(now,'yyyy\\mmmm\\')));
   fclose(fileID);
   fileID = fopen(curPathStr,'a');
   pathStr = curPathStr;% Date Changing right now. New day starts.
end

if(max(buf)<30)
    public_Frequency=0.0;
    
    for i=1:25
        public_Harmonics(i) =0;
    end
else 
    [public_Frequency,public_Harmonics] = func_analyze(buf,Fs);
end

%  datestr(now,'yyyy.mm.dd HH:MM:SS,FFF')
%     Date Freq 50hz max  harm harm harm

if isempty(lastValues)
    lastValues = public_Frequency;
else
    if abs(public_Frequency-lastValues)>0.010
        save(append('C:\Users\uj88oval\Desktop\50Hz_Log\Fault-Recording\',datestr(now,'yyyy_mm_dd_HH_MM_SS')),'buf','Fs');
    end
    lastValues = public_Frequency;
    
end
fmt = '%s | %.3f | %f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | %.3f | \r\n' ;
s(1).id=0;
s(1).timestamp=datestr(now,'yyyy-mm-dd HH:MM:SS.FFF');
s(1).freq=round(public_Frequency,3);
s(1).a50=public_Harmonics(1);
s(1).a100=public_Harmonics(2);
s(1).a150=public_Harmonics(3);
s(1).a200=public_Harmonics(4);
s(1).a250=public_Harmonics(5);
s(1).a300=public_Harmonics(6);
s(1).a350=public_Harmonics(7);
s(1).a400=public_Harmonics(8);
s(1).a450=public_Harmonics(9);
s(1).a500=public_Harmonics(10);
s(1).a550=public_Harmonics(11);
s(1).a600=public_Harmonics(12);
s(1).a650=public_Harmonics(13);
s(1).a700=public_Harmonics(14);
s(1).a750=public_Harmonics(15);
s(1).a800=public_Harmonics(16);
s(1).a850=public_Harmonics(17);
s(1).a900=public_Harmonics(18);
s(1).a950=public_Harmonics(19);
s(1).a1000=public_Harmonics(20);
s(1).a1050=public_Harmonics(21);
s(1).a1100=public_Harmonics(22);
s(1).a1150=public_Harmonics(23);
s(1).a1200=public_Harmonics(24);
s(1).a1250=public_Harmonics(25);
Struct=struct2table(s);

%gauge.Value = public_Frequency;


logstr = sprintf(fmt,datestr(now,'dd.mm.yyyy HH:MM:SS:FFF'),round(public_Frequency,3),public_Harmonics(1), public_Harmonics(2), public_Harmonics(3),public_Harmonics(4), public_Harmonics(5), public_Harmonics(6), public_Harmonics(7), public_Harmonics(8), public_Harmonics(9), public_Harmonics(10), public_Harmonics(11), public_Harmonics(12), public_Harmonics(13), public_Harmonics(14), public_Harmonics(15), public_Harmonics(16), public_Harmonics(17), public_Harmonics(18), public_Harmonics(19), public_Harmonics(20), public_Harmonics(21), public_Harmonics(22), public_Harmonics(23), public_Harmonics(24), public_Harmonics(25))



fprintf(fileID,logstr);
%parfeval(savetoDB,0,Struct);

%connection=database(datasource,username,password);
if exist('connection','var')==0 || isopen(connection) == 0
connection=database(datasource,username,password);
tobeupdated =[tobeupdated; Struct];
else
 try
    if isempty(tobeupdated) ==0
        
            
            try  
                for j=1:height(tobeupdated)
                sqlwrite(connection,tablename,tobeupdated(j,:))
                end
                tobeupdated(:,:) = [];
            catch
                close(connection);
                connection=database(datasource,username,password);
           
            end
            
    end
   
sqlwrite(connection,tablename,Struct)
catch
    tobeupdated =[tobeupdated; Struct];
    close(connection);
    clear(connection);
    connection=database(datasource,username,password);
end


end
    









toc
end

