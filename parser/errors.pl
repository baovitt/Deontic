:- [id].
:- [ws].

errors --> id.
errors --> id, ws, errors.
error_expression --> `error`, ws, ids, ws, errors, ws, `end`.