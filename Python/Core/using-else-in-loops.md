# Using `else` in loops
author: tommarshall

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

Unlike other programming languages such as C, Python allows the use of `else` statements with loops.

They are implemented so once a `for` or `while` loops condition evaluates to false, the `else` is executed.

For example, an `else` statement integrated into a `while` loop:
```python
x = 0
while (x < 3):
    print(x)
    x = x + 1
else:
    print("x got too big!")
```
Gives the following output:

```python
0
1
2
x got too big!
```

And an `else` statement integrated into a `for` loop in a similar example:

```python
for x in range(0, 5):
    print(x)
else:
    print("Value too big!")
```
Gives the following output:
```python
0
1
2
3
4
Value too big!
```

---
## Revision

An `else` statement is used in loops when the loops ??? is evaluated to ???.

* condition
* false
* null
* true
* statement
* parameter
