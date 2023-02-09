# Deontic:
Deontic is a programming language I'm working on. For now, I'm only going to share some simple constructs:

### Comments:

```Deontic
// Hello, this is a normal comment (2 slashes)
/// Comments for Documentation (3 slashes)
//! User documentation that doesn't belong to whatever immediately follows it (2 slashes then bang)
```
Multiline comments don't exist.

### Package Declarations:
Package declarations are the first thing in a file and usually represent their place in the directory structure. They look like this:
```Deontic
package organization::project::subdirectory::another end
```

### Import Declarations:
Import declarations are for importing all of, or parts of, packages.
```Deontic
// Wildcard import
with _ from organization::project::subdirectory::another end

// specific import
with {
	component 
	another::sub
} from organization::project::subdirectory end
```

### Kinds Declarations:

Kinds are like types of types. We can declare them like this:
```Deontic
/// pair kind
kind pair type -> type -> type end

/// list kind with multiple names
kind list, vector, array type -> type end
```
### Type Declarations:
Now that we have kind declarations, we can define some cool types with the primitives.
```Deontic
## Membership type. With hereditary formulas, we can make poweful dependent types, such as list must be of length n.
type member T -> list T end
type length int -> list T end
```
We'll get back to these!

More to come soon!

# Implementation:
This implementation is written in Prolog and can be run with the SWIProlog interpreter. It is by no means fast, but it is at the very least usable.

Note: this is an interpreter that I can build really fast but in the end a new compiler will be written in Deontic targeting WASM.
