---
author: tommarshall

levels:

  - beginner

type: normal

category: tip

inAlgoPool: false

aspects:
  - introduction
standards:
  python.functions.3: 10


---

# Nested Functions

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
This shows that the outer function is called with the parameter, that parameter is then passed into the inner function with a value being returned to the outer function call.

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

---
## Quiz

### Do you know how the scope of nested functions works?  


We've defined a nested function here. What will the following code output?  

```python
def some_function(num):
    def nested_func(num):
        return num + 1
    num_1 = nested_func(num)
    print(num, num_1)

def some_new_function(num):
    def nested_func_new(num):
        return num*2
    num_1 = nested_func(num)
    num_2 = nested_func_new(num)
    print(num, num_1, num_2)

some_new_function(1)
```


- NameError: global name 'nested_func' is not defined
- NameError: global name 'nested_func_new' is not defined
- AttributeError: 'super' object has no attribute '__getattr__'
- 1 NameError: global name 'nested_func' is not defined
