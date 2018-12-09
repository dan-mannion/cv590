k = connect();
setFrequency(k, 0);
setRange(k, 4);
setReadingRate(k, 1);
setFilter(k, 0);
setWaveform(k, 1);

vstart =0;
vend = 5;
vinc = 0.2;
v=vstart:vinc:vend;
defineBiasSweep(k, vstart, vend, vinc);
enableSRQ(k);

disp('Triggering');
triggerReading(k);

num_readings = length(v)-1;
output = readNReadingsFromPlotBuffer(k, num_readings);

disconnect(k);