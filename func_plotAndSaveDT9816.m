function func_plotAndSaveDT9816( src,event)
global dataBuffer;
persistent i;

if i==0;
    dataBuffer =0;
    dataBuffer = event.Data';
else
    dataBuffer = [dataBuffer, event.Data'];
end


i=1;


end

