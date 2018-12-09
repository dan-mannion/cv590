function output = readNReadingsFromPlotBuffer(k, N)
fprintf(k,sprintf('B2,1,%dX',N));
output.capacitance = [];
output.conductance = [];
output.voltage = [];

for n = 1:N
    tmp = parseData(fscanf(k));
    output.capacitance = [output.capacitance;tmp.capacitance];
    output.conductance = [output.conductance;tmp.conductance];
    output.voltage = [output.voltage;tmp.voltage];
end
end