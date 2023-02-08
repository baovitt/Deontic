
:- [id].
:- [ws].

kind --> `type`.
kind --> `type`, ws, `->`, ws, kind.

kind_expression --> `kind`, ws, ids, ws, kind, ws, `end`.