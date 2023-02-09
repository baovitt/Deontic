:- [id].
:- [ws].

c_type --> id.
c_type --> id, ws, c_types.
c_type --> `(`, ws0, type, ws0, `)`.

c_types --> c_type.
c_types --> c_type, ws, c_types.

type --> c_type.
type --> c_type, ws, `->`, ws, type.

type_expression --> `type`, ws, ids, ws, type, ws, `end`.