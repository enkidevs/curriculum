---
author: catalin
type: normal
category: tip
notes: |
  https://insights.enki.com/#/contrib/5594adacabc92e3300233c3b
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Preparing tests through annotations


---

## Content

As you may have noticed in previous insights, we've used the `@BeforeEach` annotation for describing a `setup()` function. In *JUnit 5*, `@BeforeEach` and `@BeforeAll` (and their equivalent `@AfterEach` and `@AfterAll`) annotations[1] are used to describe functions to be run at the beginning (and at the end) of `@Test` methods.

`@BeforeEach` and `@AfterEach` methods are executed for every test. This is the initial example:

```java
public class UserTest {
  private User mike;

  @BeforeEach
  public void setup() {
    mike = new User("Mike",
      LocalDate.of(1985, 6, 15));
  }
}
```

In this case, for the tests to follow, `mike` will be reinitialized as a user with the name of `Mike`, born on *15th June 1985*. In other cases, `@AfterEach` annotation can be used to close a file reading stream that was open in the beginning.

If there are multiple methods marked with `@BeforeEach` or `@AfterEach` their order of execution is arbitrary.

For more resource intensive activities (opening and closing a database connection), it is recommended to use `@BeforeAll` and `@AfterAll` annotations, hence executing the methods only once.


---

## Practice

In case you need a *custom set up* function for a *single test* in a set, you should

???

- define and call it as a normal method
- `annotate it with @BeforeAll`
- `annotate it with @BeforeEach`
- write a new test


---

## Revision

In JUnit 5, what method will be called only once, before all tests are done?

???

- `@BeforeAll`
- `@BeforeClass`
- `@AfterAll`
- `@AfterClass`
- `@Test`
