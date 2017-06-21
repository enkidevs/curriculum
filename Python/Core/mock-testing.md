# Mock testing
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more about mock testing](https://docs.python.org/3/library/unittest.mock.html)'

---
## Content

**Mocking** is primarily used with **unit testing**. Sometimes, when performing **unittests** on an object, it might have **dependencies** on other complex objects. To isolate the **behaviour** of the object you want to **test** you replace the other objects with **mocks** that simulate the behaviour of the real objects.

Basically,mocking is creating **mock objects** that simulate the behaviour of **real objects**.

Benefits of **mocking**:
- Increased speed - E.g. if you have a very **resource intensive function**, a mock of that function would **cut down on unnecessary resource** usage during testing, therefore reducing test **run time**.
- Avoiding undesired side effects during testing - E.g. **errors** triggered by one of the **dependencies** the **object** we are currently testing has.

We will define a class that implements one method that returns the sum of two numbers. Since this is a simple example, we are using `time.sleep(10)` to simulate a long running process :

```
class Calculator:
    def sum(self, a, b):
        time.sleep(10)
        return a + b
```
If we would run a basic **unittest** on this class, it'll take it `10` seconds + the actual testing time to finish the test.

Let's define a **unittest** using a mock example:

```
from unittest import TestCase
from unittest.mock import patch

class TestCalculator(TestCase):
    @patch('main.Calculator.sum',
                  return_value=9)
    def test_sum(self, sum):
        self.assertEqual(sum(2,3), 9)
```

We are importing the `patch` decorator[1] from `unittest.mock`. It replaces the actual `sum` function with a **mock function** that behaves exactly how we want. In this case, our **mock function** always returns `9`. During the lifetime of our **test**, the `sum` function is replaced with its **mock version**.

Running this **test case**:

```
.
____________________

Ran 1 test in 0.001s

OK
```

As you can see, the **mock function** we defined for `sum` is used during the test. The test finishes almost instantly.

---
## Footnotes

[1: patch decorator]
It makes it easy to mock classes or objects in a module under test. The object you specify will be replaced with a mock (or other object) during the test and restored when the test ends.

---
## Practice

What are the advantages of mock testing?
???

* Increased speed and avoiding side effects.
* Simple syntax and increased speed.
* Avoiding side effects and simple syntax.

---
## Revision

Mock objects are?
???

* Fake objects that simulate real objects behaviour.
* Object instances.
* Any basic object.
