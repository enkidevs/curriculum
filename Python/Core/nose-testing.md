# Nose testing
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more about nose testing](http://pythontesting.net/framework/nose/nose-introduction/)'

---
## Content

**Nose** is a well known **python** unit **test framework**, and can run **doctests**, **unittests**, and **“no boilerplate” tests**.

**Nose** and **pytest** have similar **syntax** up to the point where you get into extra features such as **fixtures**, **plugins** or **assert mechanisms**. This is why we'll use the same **test** we defined for `multiply` method in the **pytest** insight:

```
# test_nose.py

from unnecessary_math import multiply

def test_numbers_3_4():
    assert multiply(3,4) == 12

def test_strings_a_3():
    assert multiply('a',3) == 'aaa'
```

For this example we'll **run** the test with `-v` (verbose) flag:

```
nosetests -v test_nose.py
```
The following **output** will be produced:

```
test_nose.test_numbers_3_4 ... ok
test_nose.test_strings_a_3 ... ok

---------------------------------
Ran 2 tests in 0.000s

OK
```

As we can see **nose**'s output is similar to the one produced by **unittests**. There are two
main parts. The one above the dashes, which gives detailed information on how each **test ran**. The one
beyond the dashes states the number of test that ran and a final label which can mean:
- `OK` test passes;
- `FAILED` the test fails and rises `AssertionError`;
- `ERROR` the test fails and doesn't rise `AssertionError`.

---
## Practice

Is nose a framework for testing in python?
???

* `Yes`
* `No`
* `Not specified`

---
## Revision

The right syntax for running nose tests with verbose flag is: `___ name_of_the_file.py`?
???

* `nosetests -v`
* `nosetest -v`
* `nosetests -vb`
