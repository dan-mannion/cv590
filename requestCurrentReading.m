function output = requestCurrentReading(k)
raw = fscanf(k, 'B0X');
output = parseData(raw);
end