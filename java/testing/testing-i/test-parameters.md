---
author: adamMontgomerie
type: normal
category: feature
tags:
  - junit-4
  - testing
links:
  - >-
    [java2novice.com](http://java2novice.com/junit-examples/junit-annotations/){website}
  - >-
    [javarevisited.blogspot.gr](http://javarevisited.blogspot.gr/2012/06/junit4-annotations-test-examples-and.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `@Test` parameters


---

## Content

The JUnit `@Test` annotation is used to indicate that a method should be called to run a test. `@Test` can contain two types of parameter:

**Exceptions**

When the test is expected to throw an exception, we can indicate this by adding `expected = <exception>.class` after `@Test`, where <exception> is the name of the expected exception.

```java
//fail if IOException is not thrown
@Test(expected = IOException.class)
```

**Time-out**

When a test needs to complete within a specific time period, we can add a parameter to `@Test` to fail if the test takes too long. The value in the parameter is measured in milliseconds.

```java
//timeout after 500ms
@Test(timeout = 500)
```


---

## Practice

Complete the snippet such that the test expects an `IOException` and has a timeout of `900ms` :

```java
@???(
  ??? = IOException.class,
  ??? = 900);
```

- `Test`
- `expected`
- `timeout`
- `error`
- `TestCase`
- `expects`
- `time`


---

## Revision

What two parameters can be used with the `@Test` annotation?

???
???

- `expected`
- `timeout`
- `name`
- `size`
- `time`
- `error`
