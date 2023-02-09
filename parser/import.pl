:- [id].
:- [ws].
:- [package].

sub_imports --> package, ws, sub_imports.
sub_imports --> package.

import --> id.
import --> `_`.
import --> `{`, ws0, sub_imports, ws0, `}`.

import_expression --> `with`, ws, import, ws, `from`, ws, package.
