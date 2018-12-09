function defineCTSettings(k, bias, ts, N)
fprintf(k, 'W0,1E-3,1E-3,%.3EX', ts);
cmd = sprintf('V%.3f,0,0,0,%dX',bias, N);
fprintf(k, cmd);
fprintf(k, 'G0X');
fprintf(k, 'O0X');
end