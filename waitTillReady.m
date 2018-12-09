function waitTillReady(k)
sb = serialPoll(k);
while(sb.ready==0)
   sb = serialPoll(k); 
end
end