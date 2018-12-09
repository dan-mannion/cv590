function waitForSRQ(k)
sb = serialPoll(k);
while(sb.srq == 0)
   sb = serialPoll(k); 
end
end