function readingComplete(k)
sb = serialPoll(k);
while(sb.reading_done==0)
   sb = serialPoll(k); 
end
end