k = connect();

%100kHz test signal
fprintf(k, 'F0X');
%Auto range
fprintf(k, 'R0X');
%Termintaiton
fprintf(k,'Y2X');
%Bias voltage
fprintf(k, 'V2X');
fprintf(k,'N1X');
disp('Triggering');
fprintf(k, 'T2,0X');
% fprintf(k, 'GET');
waitTillReady(k);
% fprintf(k,'N0X');

output = requestCurrentReading(k);
disp(output)
fprintf(k,'N0X');
keyboard
disconnect(k);