
id --> id_char, id_chars.
id_char --> [Char], { char_type(Char, csymf) }.
    
% Can terminate
id_chars --> [].
id_chars --> id_char, id_chars.

ids --> id.
ids --> id, ws0, `,`, ws0, ids.

id(Id) :- phrase(id, Id).