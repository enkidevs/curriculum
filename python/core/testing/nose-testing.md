---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know
aspects:
  - introduction
  - workout
  - deep
standards:
  python.testing.1: 10
  python.testing.5: 10

links:

  - '[Node introduction](http://pythontesting.net/framework/nose/nose-introduction/){website}'


---

# Nose testing

---
## Content

**Nose** is another unit testing framework, which can run both **doctests** and **unittests**.

**Nose** and **pytest** have a similar syntax up to the point where you get into advanced features such as *fixtures*, *plugins* or *assert mechanisms*. This is why we'll use the same test we defined for `multiply` method in the **pytest** insight:
```python
# multiply_nose.py

def multiply(a, b):
    return a * b

def test_one():
    assert multiply(2, 3) == 6

def test_two():
    assert multiply(3, 2) == 5
```

For this example we'll **run** the test with `-v` (verbose) flag:
```bash
$ nosetests -v multiply.py
```
The following **output** will be produced:
```bash
multiply_nose.test_one ... ok
multiply_nose.test_two ... FAIL

=======================================
FAIL: multiply_nose.test_two
=======================================

Traceback (most recent call last):
File "python3/dist-packages/nose/case.py",
  line 198, in runTest
    self.test(*self.arg)
  File "/home/seba/Desktop/multiply_nose.py"
    line 8, in test_two
    assert multiply(3, 2) == 5
AssertionError

=======================================

Ran 2 tests in 0.001s

FAILED (failures=1)
```

As you can see **nose**'s output is similar to the one produced by **unittests**. There are two main parts. The one above the equal signs, which gives detailed information on how each test was evaluated.

The one below the equal signs which states the number of test that ran and a final label which can mean:
- `OK` test passes;
- `FAILED` the test fails and rises `AssertionError`
- `ERROR` the test fails and doesn't rise `AssertionError`

---
## Practice

What will be the test label if an `AssertionError` is thrown?

???


* `FAILED`
* `ERROR`
* `OK`

---
## Revision

In terms of basic syntax, `nose` and `pytest` are

???


* similar
* small differences
* not at all alike
