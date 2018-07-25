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
  python.testing.3: 10

links:

  - '[Learn more about pytest](https://semaphoreci.com/community/tutorials/testing-python-applications-with-pytest){website}'


---

# Pytest

---
## Content

**Pytest** is a **testing framework**. Despite being a fully-featured and extensible test tool, it has a simple syntax. Creating a *test suite* means writing a **module** with a couple of functions.

The main feature **pytest** comes with is its `assert` function. In contrast with **unittest**, where you have different assertions (`assertTrue`, `assertEqual`, etc.), **pytest**'s assert will intelligently report different types of the assert expression.

Note that for pytest to run the assertion function, it has to start with `test_`. Consider the following module:
```python
# multiply_pytest.py
def multiply(a, b):
    return a * b
def test_one():
    assert multiply(2, 3) == 6
def test_two():
    assert multiply(3, 2) == 5
```

The test can be run issuing the following command[1]:
```bash
$ pytest multiply_pytest.py
```
With the following output:
```bash
===== test session starts =====
platform linux2 -- Python 3.5.2+,
  pytest-3.1.3, py-1.4.34, pluggy-0.4.0
rootdir: /home/seba/Desktop, inifile:
collected 2 items

multiply_pytest.py .F

================ FAILURES ================
________________ test_two ________________

    def test_two():
>       assert multiply(3, 2) == 5
E       assert 6 == 5
E        +  where 6 = multiply(3, 2)

multiply_pytest.py:6: AssertionError
=== 1 failed, 1 passed in 0.02 seconds ===
```
The **output** is split into two main parts. The first half contains information about:
- the **environment** we are using;
- the path to the **file** we currently test;
- the number of **tests** collected from that file;
- the label: `F` if tests fail, or `P` if they pass.

If any **test** fails, then pytest will generate the second part. This part shows the line that causes each **test case** to fail, marked by the `>` sign. Furthermore, it gives a detailed explanation of the **assertion** and finally it states what type of **error** was encountered.

---
## Practice

`pytest`'s main assertion function is

???

* `assert`
* `assertTrue()`
* `assert()`
* `assertEqual`

---
## Revision

For `pytest` to collect an assertion function, its name has

???


* to start with `test_`
* to end in `_test`
* to contain `assert`
* either one of these

---
## Footnotes
[1: CLI]
You have to install `pytest` through Python's package manager, `pip`:
```bash
$ pip install --user pytest
```
