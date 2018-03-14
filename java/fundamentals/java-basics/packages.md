---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false


links:

  - '[Naming conventions](http://www.oracle.com/technetwork/java/codeconventions-135099.html){website}'


---

# Packages

---
## Content

**Packages** are a way of organizing Java classes. The Java packages can be stored in files having the *.jar* extension, allowing classes to be imported as a group rather than individually. 

Packages are also used to organize classes providing similar functionality.

In a Java file, you can specify it belongs to a package with `package` keyword, at the beginning of said file:
```
package java.lang;
```
`java.lang` is a Java package, which provides fundamental classes.

New packages can also be created whenever needed, in case of large projects. Since the package creates a new *namespace*, there won't be any class names conflicts with classes in other packages.

To use a package's classes outside of that package, it has to be imported:
```
import java.io.*;
```
The `*` wildcard refers to every class in that package. To import a single, specific class, you can specify its name:
```
import java.io.File;
```
This will import the `File` class, which is part of the `io` package, that comes with the basic Java compiler.

---
## Practice

Complete the following snippet to include every class in the Java lang package:
```
??? ???.???.???;
```

* `import`
* `java`
* `lang`
* `*`
* `all`
* `package`

---
## Revision

Complete the following snippet to include every class in the Java I/O package:
```
??? ???.???.???;
```

* `import`
* `java`
* `io`
* `*`
* `all`
* `IO`
* `package`

