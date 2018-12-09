%C-t measurements
k = connect();
fprintf(k, 'Y2X');
%Set 100kHz
fprintf(k,'F0X');
%Set range to 2nF
fprintf(k,'R4X');
%Select 1000/sec rate and filter off
fprintf(k,'S0P0X');
%Triple measurement
fprintf(k,'O0X');
waitTillReady(k);
% serialPoll(k)
% keyboard
%Bias waveform as DC
fprintf(k,'W0,1E-3,100E-3,1E-3X');
waitTillReady(k);
% fprintf(k,'G4');
%Set v bias and turn on
fprintf(k,'V5X');
waitTillReady(k);

fprintf(k,'N1X');
waitTillReady(k);
disp('on');

%Programme sweep on X
% fprintf(k,'T1,1X');
% 
%Trigger
fprintf(k,'T2,1X');
waitTillReady(k);
% fprintf(k,'X');
% waitTillReady(k);
fprintf(k, 'N0X');
waitTillReady(k);
keyboard

disconnect(k);