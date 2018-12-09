function triggerReading(k)
biasOn(k);
trigger(k);
waitForSRQ(k);
storeBuffer(k);
biasOff(k);
end