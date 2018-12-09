function output = parseData(raw_data)
data = textscan(raw_data,'NTPK%f,%f,%f');
output.capacitance = data{1};
output.conductance =  data{2};
output.voltage = data{3};
end