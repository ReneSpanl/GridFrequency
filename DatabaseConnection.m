datasource = "MiniWire.de MariaDB Netzfrequenz_Docker";
username="netzfrequenz";
password="rJFUTUIGukfYQwRkdawdwaadw23321321";
tablename="measurements";


connection = database(datasource,username,password);
s(1).id=0;
s(1).timestamp=datestr(now,'yyyy-mm-dd HH:MM:SS.FFF');
s(1).freq=50.0009;
s(1).a50=230;
s(1).a100=2;
s(1).a150=0;
s(1).a200=0;
s(1).a250=0;
s(1).a300=0;
s(1).a350=0;
s(1).a400=0;
s(1).a450=0;
s(1).a500=0;
s(1).a550=0;
s(1).a600=0;
s(1).a650=0;
s(1).a700=0;
s(1).a750=0;
s(1).a800=0;
s(1).a850=0;
s(1).a900=0;
s(1).a950=0;
s(1).a1000=0;
s(1).a1050=0;
s(1).a1100=0;
s(1).a1150=0;
s(1).a1200=0;
s(1).a1250=0;
Struct=struct2table(s);


date=string(datestr(now,'yyyy-mm-dd HH:MM:SS.FFF'));

%sql_table=table(1,date,50.0003,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
%sql_table(2)={datestr(now,'yyyy-mm-dd HH:MM:SS.FFF')};
sqlwrite(connection,tablename,Struct);