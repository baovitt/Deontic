:- [id].
:- [ws].
:- [package].

c_type --> package.
c_type --> package, ws, c_types.
c_type --> `(`, ws0, type, ws0, `)`.

out_type --> `out`, ws, `error`, ws0, `(`, ws0, package, ws0, `)`, ws, type.

c_types --> c_type.
c_types --> c_type, ws0, c_types.

type --> c_type.
type --> c_type, ws, `->`, ws, type.

type_expression --> `type`, ws, ids, ws, type, ws, `->`, ws, out_type, ws, `end`.