---
author: mihaiberq

levels:

  - medium

type: normal

category: must-know




---

# Intro to JUnit

---

## Content

**JUnit** is one of the main _unit testing frameworks_ written for Java. Testing means verifying that the application as a whole or small parts of it (_units_) behave as expected.

So, testing with _JUnit_ means checking small snippets of code through **assertions**. They are used to make sure that the logic behind a piece of code is not flawed. A single test is called a _test case_. However, as E. W. Dijkstra once said, _testing shows the presence, not the absence of bugs_.

Unit testing comprises:

- _manual testing_: running each test case by hand
- _automated testing_: using tools that bundle tests into test suites and running them all at once

One of the most common project structures when including tests (assuming a Maven bundle) is:

```
proj/src/main/java/com/users/User.java
proj/src/test/java/com/users/UserTest.java
```

The main reason for this structure is so you can access package-scoped classes. Another tip would be to append the `Test` suffix to the test name.

Consider this example of the `User` file:

```java
package com.enki.users;
import java.time.LocalDate;
import java.time.Period;

public class User {
  private String name;
  private LocalDate dob;
  ....
  public int getAge(LocalDate currentDate){
    return Period.between(dob, currentDate)
      .getYears();
  }
}
```

To write a basic test for the `getAge()` method:

```java
package com.enki.users;

import org.junit.Assert.*;
import org.junit.Test;

public class UserTest {
  private User mike;

  @BeforeEach
  public void setup() {
    mike = new User("Mike",
      LocalDate.of(1985, 6, 15));
  }

  @Test
  public void testGetAge_Success() {
    int expected = 31;
    int refDate = LocalDate.of(2017, 1, 1);
    assertEquals("Age as of 1/1/2017:",
      mike.getAge(refDate), expected);
  }
}
```

To run the test, you have to create another class that will act as the **runner**:

```java
package com.enki.users;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification
                                .Failure;

public class TestRunner {
  public static void main(String[] args) {
    Result result = JUnitCore
      .runClasses(UserTest.class);

    for(Failure fail :
      result.getFailures()) {
      System.out.println(fail.toString());
    }

    System.out.println(
      result.wasSuccessful());
   }
}  
```

You can then run the tests from the command line:

```bash
$ javac UserTest.java TestRunner.java
$ java TestRunner
```

---

## Practice

In JUnit, code is tested with ???

- assertions
- equal statements
- deep equal statements
- `JUnit.testln()` statements

---

## Revision

Setting up a test runner is seen as a type of ??? testing.

- automated
- manual
- unit
- application
