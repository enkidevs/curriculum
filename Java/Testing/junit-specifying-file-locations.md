# JUnit: Specifying file locations
author: fahimrahman

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

tags:

  - JUnit

  - testing

  - best-practice

links:

  - >-
    [www.javaworld.com](http://www.javaworld.com/article/2076265/testing-debugging/junit-best-practices.html){website}

---
## Content

When loading data from a file system for performing a test you can use:
```
public void setUp() {
   FileInputStream inp 
      ("C:\\Testing\\someData.dat");
   ...
}
```
But this method of loading files during testing would not work when:
* The data is not stored on ``C:`` or is moved to another location.
* The user is testing on another platform, for example, Unix.

If the test is running from the same directory as the test data, a simple solution would be:
```
FileInputStream inp ("someData.dat");
```
However, to achieve a location-independent mechanism, a class can be mapped to a specific source directory, which would move the test data from the CM system into the classpath of the system under test:
```
InputStream inp = SourceResourceLoader.
   getResourceAsStream (this.getClass(),
   "someData.dat");
```

---
## Revision

Supposing testing data is located in the same directory as the program is running, what solution would be more efficient:

```
FileInputStream inp(
 ???);
```

*`"someData.dat"` 
*`"C:\\Testing\\someData.dat"`
*`/home/Testing/someData.dat`