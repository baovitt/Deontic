:- [id].
:- [ws].

package_expression --> `package`, ws, package, ws, `end`.

package --> id.
package --> id, ws, package.