:- [id].
:- [ws].
:- [package].

import --> id.
import --> `_`.
import --> `{`, ws0, packages, ws0, `}`.

import_expression --> `with`, ws, import, ws, `from`, ws, packages, ws, `end`.
