function sb=parseStatusByte(status_byte)
bit_masks = uint8(ones(1,8));
for b = 0:7
   bit_masks(b+1)= bitshift(bit_masks(b+1), b);
end


sb.reading_overflow = bitand(status_byte, bit_masks(1));
sb.module_overload = bitand(status_byte, bit_masks(2));
sb.sweep_done = bitand(status_byte, bit_masks(3));
sb.reading_done = bitand(status_byte, bit_masks(4));
sb.ready = bitand(status_byte, bit_masks(5));
sb.error = bitand(status_byte, bit_masks(6));
sb.srq = bitand(status_byte, bit_masks(7));
sb.iee_output_done = bitand(status_byte, bit_masks(8));

end