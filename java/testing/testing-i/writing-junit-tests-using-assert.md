---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - junit
  - testing
links:
  - >-
    [junit.sourceforge.net](http://junit.sourceforge.net/javadoc/org/junit/Assert.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Writing JUnit tests using `Assert`


---

## Content

Making assertions allows us to check that our methods produce the correct outputs and that objects are in the states we expect them to be at run time.

The `Assert` class contains many methods allowing us to assert different things. For example, we can assert that two arrays are equal:

```java
String[] arrayA = {"a", "b", "c"};
String[] arrayB = {"a", "b", "c"};
assertArrayEquals(arrayA, arrayB);
```

This assertion will pass because `arrayA` and `arrayB` are equal. In JUnit, if one assertion in a test fails, then that test method counts as having failed.

```java
private boolean isEven(int number) {
  if(number % 2 == 0) return true;
  else return false;
}
@Test
public void exampleTest() {
  assertTrue(isEven(3));
  ...
}
```

In this example, `assertTrue` will fail because `isEven` will return `false` for a value of 3. Because this assertion has failed, `exampleTest()` will fail, regardless of any additional tests within the method.


---

## Practice

To test for a for a `boolean` value, what assertion method should be used?

???

- `assertTrue`
- `assertBool`
- `assert`
- `assertEquals`
- `assertBoolean`


---

## Revision

Assert if the two arrays are equal:

```java
String[] a = {"a", "b", "c"};
String[] b = {"a", "b", "c"};
???(a, b);
```

- `assertArrayEquals`
- `assert`
- `assertTest`
