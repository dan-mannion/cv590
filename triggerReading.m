function triggerReading(k)
fprintf(k,'T1,1X');
enableSRQ(k);
biasOn(k);
waitTillReady(k);
trigger(k);
waitForSRQ(k);
storeBuffer(k);
biasOff(k);
end