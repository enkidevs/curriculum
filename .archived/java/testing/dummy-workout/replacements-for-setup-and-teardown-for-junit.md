---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

notes: |
  https://insights.enki.com/#/contrib/5594adacabc92e3300233c3b

---
# Replacements for `setUp()` and `tearDown()` for **JUnit**

---
## Content

After the version 4 of the Java testing framework JUnit, instead of using the methods `setUp()` and `tearDown()` for managing testing resources, the `@Before` and `@After` annotations have been introduced. In addition, `@Test` annotation can be used for the testing methods.

Instead of :
```java
VirtualMachine vm;
public void setUp() {
  vm = new VirtualMachine();
}
public void tearDown() {
  vm.shutDown();
}
```

you can use :
```java
VirtualMachine vm;
@Before
public void initialize() {
  vm = new VirtualMachine();
}
@After
public void shutDown() {
  vm.shutDown();
}
```

Before each `@Test` method, the `@Before` method will be called. Consequently, after the the `@Test` method, `@After` method will be invoked.

If there are multiple methods marked with `@Before` or `@After` their order of execution is arbitrary.

`@BeforeClass` and `@AfterClass` methods
will be called only once - either *before* all tests are started or *after* they are all ran. This proves useful when you want to prevent multiple server connections or disconnects.

---
## Practice

Complete the following code snippet with the required annotations:
```
VirtualMachine vm;
@???
public void initialise() {
   vm = new VirtualMachine;
}

@???
public void shutDown() {
  vm.shutDown();
}
```

*`Before` 
*`After` 
*S`etUp` 
*T`earDown` 
*`Test`

---
## Revision

What method will be called only once, before all tests are done?

`???`

*`@BeforeClass` 
*`@BeforeAll` 
*`@AfterAll` 
*`@After` 
*`@Test`