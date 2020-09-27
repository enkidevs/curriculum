---
author: adamMontgomerie
type: normal
category: tip
tags:
  - junit-4
  - testing
links:
  - >-
    [javarevisited.blogspot.gr](http://javarevisited.blogspot.gr/2012/06/junit4-annotations-test-examples-and.html){website}
  - >-
    [junit.sourceforge.net](http://junit.sourceforge.net/javadoc/org/junit/Ignore.html){website}
---

# Use `@Ignore` to disable JUnit tests


---

## Content

Sometimes it is appropriate to disable a test or set of tests. Perhaps the feature which is supposed to be tested has not yet been implemented.

In *JUnit 4*, use the `@Ignore` annotation:

```java
@Ignore
@Test
public void exampleTest() { ... }
```

`@Ignore` can also take an optional parameter. This can be used to display a message explaining why the test is being ignored. For example:

```java
@Ignore("Not yet implemented")
```
