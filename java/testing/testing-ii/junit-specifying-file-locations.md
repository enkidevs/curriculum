---
author: fahimrahman
type: normal
category: best-practice
tags:
  - JUnit
  - testing
  - best-practice
links:
  - >-
    [www.javaworld.com](http://www.javaworld.com/article/2076265/testing-debugging/junit-best-practices.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# JUnit: Specifying file locations


---

## Content

When loading data from a file system for performing a test you can use:

```java
public void setup() {
  try {
   FileInputStream inp = new FileInputStream
    ("C:\\Testing\\someData.dat");
  }
   ...
}
```

But this method of loading files during testing would not work when:

- The data is not stored on `C:` or is moved to another location.
- The user is testing on another platform, for example, Unix.

If the test is running from the same directory as the test data, a simple solution would be:

```java
FileInputStream inp = new FileInputStream
  ("/someData.dat");
```

However, to achieve a location-independent mechanism, a class can be mapped to a specific source directory, which would move the test data from the CM system into the classpath of the system under test:

```java
public void setup() {
  try {
    Path filePath = Path.get(getClass()
     .getResource("/data.txt").toURI());
    List<String> lines =  
     Files.readAllLines(filePath);
  }
  ...
}
```

Note that you don't have to close the stream if you're using `readAllLines()`, unlike `lines()`.


---

## Revision

When testing external resource files, it is recommended

???

- to move the files in the same directory as the tests
- to use the Java 8 API
- to close the input stream by yourself
