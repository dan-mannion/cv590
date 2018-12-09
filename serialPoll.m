function status_byte = serialPoll(k)
[~,sb]=spoll(k);
status_byte = parseStatusByte(sb);
end