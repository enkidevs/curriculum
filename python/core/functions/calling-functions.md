---
author: tommarshall

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false




---

# Calling functions

---
## Content

To call a function in Python you simply write the functions name followed by some parentheses `()`.

For example:

```python
# To define
def new_func():
    print ('Function time!')

# To call
new_func()

```
Gives the following output:

```
Function time!
```

A parameter in Python is a variable which can be passed into functions so that methods can be performed onto it.

In this example, variable `x` is passed into the function as a parameter:

```python
def func(x):
    ans = x * x
    print(ans)
```
So to call this function, you must pass a parameter into your function call like follows:
```python
num = 5
func(num)
```
In the example, variable `x` will take the value of `num`, therefore the output will be:
```
25
```

---
## Revision

Complete the code snippet to define and call the function with the correct parameter:

```
??? cube(x):
    res = x * x * x
    print (res)

num = 5
???(???)
```

* `def`
* `cube`
* `num`
* `x`
* `new`
* `obj`
* `var`
* `function`

