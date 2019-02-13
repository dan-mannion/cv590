function setRange(k, val)
%SETRANGE( k, val)  val 0:auto, 1:2pF/2uS, 2:20pF/20uS, 3:200pF/200uS
    %4:2nF
fprintf(k, 'R%dX',val);
end