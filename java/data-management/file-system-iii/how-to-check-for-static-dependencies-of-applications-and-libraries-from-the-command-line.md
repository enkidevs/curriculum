---
author: catalin
type: normal
category: how-to
links:
  - '[dzone.com](https://dzone.com/articles/jdeps-jdk-8-command-line){website}'
  - >-
    [www.eclipse.org](http://www.eclipse.org/community/eclipse_newsletter/2016/february/article3.php){website}
  - >-
    [marxsoftware.blogspot.co.uk](http://marxsoftware.blogspot.co.uk/2014/03/jdeps.html){website}
notes: 'https://insights.enki.com/insight/55f433a9da97642e00a7819a'
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

# How to check for static dependencies of applications and libraries from the command line.


---

## Content

Introduced with JDK 8, the `jdeps` command shows the package-level or class-level dependencies of Java class files (applications or libraries) from within the command line.

Basic syntax:

```java
jdeps myApplication.jar 

```

The input class can be a path name to a `.class` file, a directory, a `JAR` file, or it can be a fully qualified class name to analyze all class files. 

Prints all class-level dependencies:

```java
jdeps -v myApplication.jar
```

Write the output in `.dot` files :

```java
jdeps -v myApplication.jar 
-dotoutput LOCATION

```

There are a few more useful options available for use with `jdeps`. You can always check them by running`jdeps -help`.


---

## Practice

Print all class-level dependencies of `enki.jar` application:

```java
??? ??? enki.jar
```

- `jdeps` 
- `-v` 
- `-c` 
- `-d` 
- `jdb` 
- `deps`


---

## Revision

Print all class-level dependencies of `enki.jar` application:

```java
??? ??? enki.jar
```

- `jdeps` 
- `-v` 
- `-c` 
- `-d` 
- `jdb` 
- `deps`
