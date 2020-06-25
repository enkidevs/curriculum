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

  - '[More on mocking tests](https://docs.python.org/3/library/unittest.mock.html){website}'


---

# Mocking objects

---
## Content

**Mocking** is primarily used with **unit testing**. Sometimes, when performing **unittests** on an object, it might have **dependencies** on other complex objects. To isolate the **behavior** of the object you want to **test** you replace the other objects with **mocks** that simulate the behavior of the real objects.

Basically,mocking is creating **mock objects** that simulate the behavior of **real objects**.

Benefits of **mocking**:
- Increased speed - E.g. if you have a very **resource intensive function**, a mock of that function would cut down on unnecessary resource usage during testing, therefore reducing test *run time*.
- Avoiding undesired side effects during testing - E.g. **errors** triggered by one of the **dependencies** the object we are currently testing has.

We will define a class that implements one method that returns the product of two numbers. Since this is a simple example, we are using `time.sleep(10)` to simulate a long running process :

```python
class Calculator:
    def multiply(self, a, b):
        time.sleep(10)
        return a * b
```
If we would run a basic **unittest** on this class, it'll take `10` seconds plus the actual testing time to finish the test.

Let's define a **unittest** using a mock example:

```
from unittest import TestCase
from unittest.mock import patch

class TestCalculator(TestCase):
    @patch('main.Calculator.multiply',
                  return_value=9)
    def test_multiply(self, multiply):
        self.assertEqual(multiply(2,3), 9)
```

We are importing the `patch` decorator[1] from `unittest.mock`. It replaces the actual `multiply` function with a **mock function** that behaves exactly how we want it to. In this case, our **mock function** always returns `9`. During the lifetime of our **test**, the `multiply` function is replaced with its **mocked version**.

Running this **test case**:

```
.
____________________

Ran 1 test in 0.001s

OK
```

As you can see, the mock function we defined for `multiply` is used during the test. The test finishes almost instantly.

---
## Practice

What are the advantages of using mocks in testing?

???


* Increased speed and side effects avoidance.
* Simple syntax and increased speed.
* Side effects avoidance and simple syntax.

---
## Revision

Mock objects are

???


* fake objects that simulate real objects' behavior
* object instances that appeared in the code
* any basic object

---
## Footnotes
[1: patch decorator]
It makes it easy to mock classes or objects in a module under test. The object you specify will be replaced with a mock (or other object) during the test and restored when the test ends.
