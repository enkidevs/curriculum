# Unit testing
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[learn more about unit testing](https://docs.python.org/3/library/unittest.html)'

---
## Content

You can see a **unit** as the smallest testable part of a **program**. **Unit testing** ensures that all **units** work as expected.

Considering the following example:

```
# simple_test.py

import unittest

class SimplisticTest(unittest.TestCase):

    def setUp(self):
        pass

    def test_True(self):
        self.assertTrue(True)

if __name__ == '__main__':
    unittest.main()
```

The standard workflow of **unit testing** is:
- `import unittest`;
- **define** a class derived from `unittest.TestCase`;
- **define** test methods, their name **must** start with the keyword `test_`;
- place `unittest.main()` in your new class to be able to run the **tests**.

Each **test method** requires the use of the following methods:
- `assertEqual()` to check for an **expected result**;
- `assertTrue()` or `assertFalse()` to verify a **condition**;
- `assertRises()` to verify that a specific **exception** is raised.

Furthermore we have two **methods**: `setUp()` and `tearDown()`, which eanble users to define **instructions** that will be executed **before** each **test method** and **after** respectively.

Suppose we want to **run the test**, we need to write the following **command** in the command line:

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
The full stop displayed above the dashes('-') indicates how many test have **passed**. Below the dashes we can see the **number of tests** and the **time they took to run**. On the last line we will find a message:
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

`setUp()` method defines instructions that need to be done?
???

* before the test method.
* after the test method.
* this is not a method.

---
## Revision

`assertTrue` and `assertFalse` methods ar used to check whether?
???

* A condition is met.
* An expected result is met.
* A specific exception rises.
