# Pytest
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more about pytesting](https://semaphoreci.com/community/tutorials/testing-python-applications-with-pytest)'

---
## Content

**Pytest** is **testing framework**. Despite being a fully-featured and extensible test **tool**, it has a simple **syntax**. Creating a **test suite** supposes writing a **module** with a couple of **functions**.

A new feature **pytest** comes with is its `assert` function. In contrast with **unittest** where you have a lot of possible types of `asserts` (`assertTrue`, `assertEqual`, etc.), **pytest**'s assert will intelligently report different types of the assert expression.

**Note** that for pytest to spot each **test case**, they have to respect the following naming convention: start with `test_` or end in `_test.py`.

Consider the following module:

```
# pytest_mock.py
def func(x):
    return x + 1
def test_example():
    assert func(3) == 5
```

The **test** can be run using the following **command**:

```
python3 -m pytest pytest_mock.py
```

And the following **output** will result:

```
========= test session starts ===========
platform linux2 -- Python 3.6.1,
pytest-3.1.1,
rootdir: /home/sebaraba/Desktop,
inifile: collected 1 items

pytest_mock.py F

=============== FAILURES ================
_____________ test_example ______________

    def test_example():
>       assert func(3) == 5
E       assert 4 == 5
E        +  where 4 = func(3)

pytest_mock.py:6: AssertionError
======= 1 failed in 0.01 seconds ========
```

The **output** is split into two main parts:

The first one contains information about:
- the **environment** we are using;
- the **path** to the **file** we currently test;
- the number of **tests** collected from that file;
- and finally the labeling of the files: `F` if fail, `P` if all pass.

If any **test** fails then the test will generate the second part, just like in our example. This part shows the line that causes each **test case** to fail, marked by the `>` sign. Furthermore it gives a detailed explanation of the **assertion** and finally it states what type of **error** was encountered.

---
## Practice

Pytest's `assert` will auto-determine which type of `assert` is needed in each case.
???

* True.
* False.
* Not specified.

---
## Revision

Pytest's naming convention says:
???

* Each test's name must begin with `test_` or end in `_test.py`.
* Each test's name has to begin with `test_` only.
* Each test's name has to end in `_test.py` only.
