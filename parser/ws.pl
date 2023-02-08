ws --> ws_char, ws_chars.

ws0 --> [].
ws0 --> ws_char, ws_chars.

ws_char --> [Char], { char_type(Char, space) }.
    
% Can terminate
ws_chars --> [].
ws_chars --> ws_char, ws_chars.