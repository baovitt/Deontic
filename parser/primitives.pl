
int --> int_char, int_chars.
int_char --> [Char], { char_type(Char, digit) }.
    
% Can terminate
int_chars --> [].
int_chars --> int_char, int_chars.