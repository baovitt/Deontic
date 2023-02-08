
comment --> `// `, comment_char, comment_chars.
doc_comment --> `/// `, comment_char, comment_chars.
top_level_comment --> `//! `, comment_char, comment_chars.

comment_char --> [Char, End], { char_type(Char, print), char_type(End, end_of_line) }.
comment_char --> [Char], { char_type(Char, print) }.

comment_chars --> [].
comment_chars --> comment_char, comment_chars.