
primitive --> natural.
primitive --> list.
primitive --> real.
primitive --> bool.
primitive --> set.
primitive --> symbol.
primitive --> expression.
primitive --> string.

natural --> natural_char, natural_chars.
natural_char --> [Char], { char_type(Char, digit) }.
natural_chars --> [].
natural_chars --> natural_char, natural_chars.

primitive_list --> primitive.
primitive_list --> primitive, ws, symbol, ws, primitive_list.
primitive_list --> primitive, ws0, `,`, ws0, primitive_list.
list --> `[]`.
list --> `[`, ws0, primitive_list, ws0, `]`.

primitive_expression --> primitive.
primitive_expression --> primitive, ws, symbol, ws, primitive_expression.
primitive_expression --> primitive, ws0, `,`, ws0, primitive_expression.
expression --> `()`.
expression --> `(`, ws0, primitive_expression, ws0, `)`.

primitive_set --> primitive.
primitive_set --> primitive, ws0, symbol, ws0, primitive_set.
primitive_set --> primitive, ws0, `,`, ws0, primitive_set.
set --> `%{}`.
set --> `%{`, ws0, primitive_set, ws0, `}`.

real --> natural, `.`, natural.
real --> `.`, natural.

bool --> `true`.
bool --> `false`.
bool --> `#t`.
bool --> `#f`.

symbol --> symbol_char, symbol_chars.
symbol_char --> [Char], 
    { (char_type(Char, csymf) ; char_type(Char, prolog_symbol)), not(Char = ',') }.
symbol_chars --> [].
symbol_chars --> symbol_char, symbol_chars.

escape_char --> `\\t`.
escape_char --> `\\n`.
escape_char --> `\\r`.
escape_char --> `\\b`.
escape_char --> `\\f`.
escape_char --> `\\\\`.
escape_char --> `\\"`. % " fixes syntax highlighting
escape_char --> `\\'`. % ' fixes syntax highlighting

string_char --> [Char], { char_type(Char, print), not(Char = '\\') }.

string_content --> escape_char.
string_content --> escape_char, string_content.
string_content --> string_char, string_content.

string --> `""`.
string --> `"`, string_content, `"`.