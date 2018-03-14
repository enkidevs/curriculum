# Nested Functions
author: tommarshall

levels:

  - beginner

type: normal

inAlgoPool: false

category: tip

standards:
  py.functions.3: 10


---
## Content

Functions can be defined within the scope of other functions. Functions defined within other functions are known as *nested functions*.

Nested functions can often be used to construct new functions based on parameters and to simplify your algorithms.

For example:

```python
def out_func(num):
    def in_func(num):
        return num + 1
    num_1 = in_func(num)
    print(num, num_1)
```
The `in_func` function is nested within the `out_func` function and is inaccessible from outside of the `out_func` functions scope.

If you try to call `in_func`, you receive the following error due to it being out of the global scope:
```bash
NameError: name 'in_func' is not defined
```
When calling `out_func`, this is the output:
```python
out_func(5)
# (5, 6)
```
This shows that the outer function is called with the parameter, that parameter is then passed into the inner function with a value being returned back to the outer function call.

---
## Practice

What’s the output to the following function call:

```python
def outer(num):
    def inner(num):
        return num - 2
    nums = inner(num)
    print(num, nums)

outer(3)
```
???

* `(3, 1)`
* `(5, 3)`
* `(3, 3,`
* `(1, 3)`

---
## Revision

A function is nested when it’s defined inside the ??? of another function.

* scope
* parentheses
* enclosing class