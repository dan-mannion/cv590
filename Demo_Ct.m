%Setup
k = connect();
setFrequency(k, 0);
setRange(k, 0);
setReadingRate(k, 1);
setFilter(k, 0);
%Define sweep parameters
bias = 0.5;
ts = 1;
num_samples = 5;
defineCTSettings(k, bias, ts, num_samples);
%Trigger and obtian readings
triggerReading(k);
output = readNReadingsFromPlotBuffer(k, num_samples);
disconnect(k);