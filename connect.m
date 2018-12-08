function dev = connect()
%% Instrument Connection

% Find a VISA-GPIB object.
dev = instrfind('Type', 'visa-gpib', 'RsrcName', 'GPIB0::15::INSTR', 'Tag', '');

% Create the VISA-GPIB object if it does not exist
% otherwise use the object that was found.
if isempty(dev)
    dev = visa('NI', 'GPIB0::15::INSTR');
else
    fclose(dev);
    dev = dev(1);
end

% Connect to instrument object, obj1.
fopen(dev);
end