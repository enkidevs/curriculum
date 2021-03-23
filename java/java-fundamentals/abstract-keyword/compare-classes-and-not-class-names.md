---
author: catalin
type: normal
category: caveats
links:
  - >-
    [www.securecoding.cert.org](https://www.securecoding.cert.org/confluence/display/java/OBJ09-J.+Compare+classes+and+not+class+names){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Compare classes and not class names


---

## Content

In JVM two classes are the same class (and same type) if they are loaded by the same class loader and have the same qualified name. Two classes with the same name but different package names are distinct, as are two classes with the same qualified name loaded by different class loaders.

Checking if `myClass` is the same as `com.mypackage.Class` : 

```java
//noncompliant
if (myClass.getClass()
 .getName()
 .equals("com.mypackage.Class")) {
 // run code...
}
```

```java
//compliant
if (myClass.getClass() == 
 com.mypackage.Class.class) {
 // run code...
}
```

Depending on the function that the insecure code performs, it could be vulnerable to a mix-and-match attack. An attacker could supply a malicious class with the same fully qualified name as the target class. If access to a protected resource is granted based on the comparison of class names alone, the unprivileged class could gain unwarranted access to the resource.


---

## Revision

Which two properties make two classes in a JVM the same class? 

???

- Loaded by the same class loader, have the same qualified name.
- Loaded by the same class loader, same methods.
- Loaded by the same class loader, same fields.
- Same qualified name, same size.
- Same qualified name, same compilation times.
