---
author: catalin
type: normal
category: feature
links:
  - >-
    [www.oracle.com](http://www.oracle.com/technetwork/articles/java/jf14-nashorn-2126515.html){website}
notes: 'https://insights.enki.com/#/contrib/others/55f43787ce84ec2100d2bb5e?search=kha'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# `JJS` - Oracle Nashorn, newest JavaScript Engine


---

## Content

With the introduction of *Java 8*, the *JDK* will be shipped with a new *JavaScript* scripting engine, a replacement for the old one based on *Mozilla Rhino*. 

 **Oracle Nashorn** provides better compliance with the *ECMA* normalised *JavaScript* specification and better runtime performance through *invokedynamic*-bound call sites.

The `jjs` tool can be run from the terminal and accepts *JavaScript* files as argument:

```shell
jjs MyFile.js
```

While **Oracle Nashorn** runs *ECMA*-compliant *JavaScript*, it is important to note that objects normally accessible in a web browser are not available, for example, `console`, `window`, and so on.

In order to get a list of all jjs commands:

```shell
jjs -help
```

A few interesting features of Oracle Nashorn:

- It can run scripts as JavaFX applications.
- JavaScript strict mode activation to run system scripts.
- Additional classpath elements can be specified for the JVM.
- The scripting mode mainly consists of heredocs and shell invocations.


---

## Practice

Using Java 8’s Oracle Nashorn engine run `enki.js`:

```java
??? ???
```

- `jjs` 
- `enki.js` 
- `enki` 
- `enki-js` 
- `jss` 
- `jdb`


---

## Revision

What tool shipped with Java 8 should be used to run `.js` files?

???

- `jjs` 
- `javaScript` 
- `jss` 
- `jdb`
