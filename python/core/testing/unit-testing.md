---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
  - workout
  - deep
standards:
  python.testing.1: 10
  python.testing.3: 10

links:

  - '[learn more about unit testing](https://docs.python.org/3/library/unittest.html){website}'


---

# Unittest

---
## Content

**"Testing"**, in general programming terms, is the practice of writing code (separate from your actual application), that invokes parts of your application's code in order to **test** if it works as expected.

A **unit** is the smallest testable part of a program. **Unit testing** ensures that all units work as expected.

Consider the following example:
```python
import unittest

class SimplisticTest(unittest.TestCase):

  def test_True(self):
      self.assertTrue(True)

  def test_Upper(self):
      self.assertEqual('enki'.upper,
                              'ENKI')

if __name__ == '__main__':
    unittest.main()
```

The standard way of writing a unit test is:
- `import unittest`
- define a class derived from `unittest.TestCase`
- define test methods, their *name starting with the keyword `test_`*
- place `unittest.main()` in your new class to be able to run the **tests**

Each **test case** can make use of the following methods:
- `assertEqual()` to check for an expected result
- `assertTrue()` or `assertFalse()` to verify a condition
- `assertRises()` to verify that a specific exception is raised

Two additional methods are worth mentioning: `setUp()` and `tearDown()`, which allow us to define **instructions** that will be executed **before** (`setUp()`) and **after** (`tearDown()`) each test method.

In order to **run a test**, we need to fire up a terminal and type in the following command:
```bash
$ python -m unittest simple_test.py
```
The following **output** will be generated:

```
.
===========================
Ran 1 tests in 0.000s

OK
```
The full stop displayed above the dashes ('-') indicates how many test have **passed**. Below the dashes we can see the **number of tests** and the **time they took to run**. The last line will contain one of three messages:
- `OK` test passes;
- `FAIL` the test fails and rises `AssertionError`;
- `ERROR` the test fails and doesn't rise `AssertionError`.

For more detailed test results, use the `-v` flag with the command:
```bash
$ python -m unittest simple_test.py -v
```
The following output will be generated:
```
test_True (__main__.SimplisticTest) ... ok
===========================

Ran 1 tests in 0.000s

OK
```

---
## Practice

`setUp()` method defines instructions/code that will be run

???


* before each test method
* after each test method
* during testing
* this is not a method

---
## Revision

`assertTrue()` and `assertFalse()` methods are used to check whether

???


* a condition is met
* an expected result is met
* a specific exception is raised
