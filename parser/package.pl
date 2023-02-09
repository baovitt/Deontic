:- [id].
:- [ws].

package_expression --> `package`, ws, package, ws, `end`.

package --> id.
package --> id, `::`, package.

packages --> package.
packages --> package, ws, packages.