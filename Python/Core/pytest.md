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

**Pytest** is a **no-boilerplate** alternative to **Python**’s standard **unittest** module. Despite being a fully-featured and extensible test **tool**, it boasts of a simple **syntax**. Creating a **test suite** is as easy as writing a **module** with a couple of **functions**.

A new feature **pytests** come with, is their `assert` function. In contrast with **unittests** where you need to memorise all possible types of `asserts` (`assertTrue`, `assertEqual`, etc.), **pytest**'s assert will intelligently report **intermediat values** of the assert expression.

**Note** that for **pytest** to spot each begging of a **test case**, they have to respect the following naming convention: **Test**'s name either starts with `test_` or ends in `_test.py`.

Considering the following module:

```
# pytest_mock.py
def func(x):
    return x + 1
def test_example():
    assert func(3) == 5
```
The **test** can be run using the following **command**:

```
python -m pytest pytest_mock.py
```
And the following **output** will result:

```
========= test session starts ===========
platform linux2 -- Python 2.7.12,
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
The **output** is split in two main parts:

The **first** one contains information about:
- the **environment** we are using;
- the **path** to the **file** we currently test;
- the number of **items** collected from that file;
- and finally it **labels** the file with either `F` if any test fails or `P` if all tests pass.

The **second** one shows the line that causes each **test case** to fail, marked by the `>` sign. Furthermore it gives a detailed explanation of the **assertion** and finally it states what type of **error** was encountered.

---
## Practice

Pytest's `assert` will intelligently report intermediate values of the `assert` expression?
???

* Ture.
* False.
* Not specified.

---
## Revision

Pytest's naming convention says?
???

* Each test's name must begin with `test_` or end in `_test.py`.
* Each test's name have to begin with `test_` only.
* Each test's name have to end in `_test.py` only.
