%Setup
k = connect();
fprintf(k,'Y2X');
setFrequency(k, 0);
setRange(k, 4);
setReadingRate(k, 2);
setFilter(k, 0);
%Define sweep parameters
bias = 2;
ts = 1;
num_samples = 5;
defineCTSettings(k, bias, ts, num_samples);
%Trigger and obtian readings
triggerReading(k);
output = readNReadingsFromPlotBuffer(k, num_samples);
disconnect(k);