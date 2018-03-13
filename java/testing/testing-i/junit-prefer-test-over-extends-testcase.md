---
author: adamMontgomerie

levels:

  - medium

type: normal

category: best practice

tags:

  - exceptions

  - junit-4

  - testing


links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/2635839/junit-confusion-use-extend-testcase-or-test){website}'


---

# JUnit: prefer `@Test` over `extends TestCase`

---
## Content

Before JUnit 4, test classes needed to be written by extending the `TestCase` class, like this:
```
import junit.framework.TestCase;
public class NewTestClass extends TestCase {
  public void newTest() {
    ...
  }
}
```
In JUnit 4+, it is possible to instead define tests by using `@Test`:
```
import org.junit.*;
public class NewTestClass {
  @Test
  public void newTest() {
    ...
  }
}
```
One advantage of this notation is that it can be extended to test for exceptions that are expected to be thrown. For example:
```
@Test(expected =
  FileNotFoundException.class)
```

---
## Practice

Complete the code below such that the test expects the specified error to be thrown:
```
???( ??? = 
   FileNotFoundException.class);
```


* `@Test` 
* `expected` 
* `expect` 
* `Test` 
* `throw` 
* `thrown` 
* `TestCase`

---
## Revision

Instead of extending `TestCase` , since JUnit 4 you can use:

???


* `@Test` 
* `Test` 
* `@TestCase` 
* `@Testing`

