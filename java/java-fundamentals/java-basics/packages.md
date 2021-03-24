---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Naming
    conventions](https://www.oracle.com/java/technologies/naming-conventions.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Packages


---

## Content

**Packages** are a way of organizing Java classes. The Java packages can be stored in files having the *.jar* extension, allowing classes to be imported as a group rather than individually.

Packages are also used to organize classes providing similar functionality.

In a Java file, you can specify it belongs to a package with `package` keyword, at the beginning of the said file:

```java
package java.lang;
```

`java.lang` is a Java package, which provides fundamental classes.

New packages can also be created whenever needed, in case of large projects. Since the package creates a new *namespace*, there won't be any class names conflicts with classes in other packages.

In order to use a package's classes outside of that package, it has to be imported:

```java
import java.io.*;
```

The `*` wildcard refers to every class in that package. To import a single, specific class, you can specify its name:

```java
import java.io.File;
```

This will import the `File` class, which is part of the `io` package, which comes with the underlying Java compiler.


---

## Practice

Complete the following snippet to include every class in the Java lang package:

```java
??? ???.???.???;
```

- `import`
- `java`
- `lang`
- `*`
- `all`
- `package`


---

## Revision

Complete the following snippet to include every class in the Java I/O package:

```java
??? ???.???.???;
```

- `import`
- `java`
- `io`
- `*`
- `all`
- `IO`
- `package`
