:- [id].
:- [ws].
:- [primitives].

fixity --> `infixl`.
fixity --> `infixr`.
fixity --> `infix`.
fixity --> `prefix`.
fixity --> `prefixr`.
fixity --> `postfix`.
fixity --> `postfixl`.

fixity_expression --> fixity, ws, ids, ws, int, ws, `end`.