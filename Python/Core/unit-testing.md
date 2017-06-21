# Unittest
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[learn more about unit testing](https://docs.python.org/3/library/unittest.html)'

---
## Content

**"Testing"**, in general programming terms, is the practice of writing code (separate from your actual application code), that invokes parts of your application's code in order to **test** that its behaviour works as expected.

You can see a **unit** as the smallest testable part of a **program**. **Unit testing** ensures that all **units** work as expected.

Consider the following example:

```
# simple_test.py

import unittest

class SimplisticTest(unittest.TestCase):

  def test_True(self):
      self.assertTrue(True)

  def test_Upper(self):
      self.assertEqual(`foo`.upper,
                              'FOO')

if __name__ == '__main__':
    unittest.main()
```

The standard way of writing an unit test is:
- `import unittest`;
- define a class derived from `unittest.TestCase`;
- afterwards define test methods, their name **must start** with the keyword `test_`;
- and finally place `unittest.main()` in your new class to be able to run the **tests**.

Each **test case** might make use of the following methods:
- `assertEqual()` to check for an expected result;
- `assertTrue()` or `assertFalse()` to verify a condition;
- `assertRises()` to verify that a specific exception is raised.

Furthermore, we have two additional **methods**: `setUp()` and `tearDown()`, which enable us to define **instructions** that will be executed **before** (`setUp()`) and **after** (`tearDown()`) each **test method**.

In order to **run a test**, we need to type in the following command:

```
python -m unittest simple_test.py
```
The following **output** will be generated:

```
.
---------------------------
Ran 1 tests in 0.000s

OK
```
The full stop displayed above the dashes ('-') indicates how many test have **passed**. Below the dashes we can see the **number of tests** and the **time they took to run**. On the last line we will find a message:
- `OK` test passes;
- `FAIL` the test fails and rises `AssertionError`;
- `ERROR` the test fails and doesn't rise `AssertionError`.

For more detailed test results, use the `-v` flag with the command:
```
python -m unittest simple_test.py -v
```
The following **output** will be generated:
```
test_True (__main__.SimplisticTest) ... ok
---------------------------
Ran 1 tests in 0.000s

OK
```
---
## Practice

`setUp()` method defines instructions/code that needs to be run.
???

* before each test method
* after each test method
* this is not a method

---
## Revision

`assertTrue` and `assertFalse` methods are used to check whether.
???

* a condition is met
* an expected result is met
* a specific exception is raised
