# Using `else` in loops
author: tommarshall

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

standards:
  py.control-structures.0: 10

---
## Content

Unlike other programming languages such as C, Python allows the use of `else` statements with loops.

They are implemented so once a `for` or `while` loops condition evaluates to false, the `else` is executed. In other words, the `else` statement is called **once** when loops exit naturally.

For example, an `else` statement integrated into a `while` loop:
```python
x = 0
while (x < 3):
    print(x)
    x = x + 1
else:
    print(x, "is too big!")
```
Gives the following output:

```python
0
1
2
3 is too big!
```

And an `else` statement integrated into a `for` loop in a similar example:

```python
for x in range(0, 5):
    print(x)
else:
    print(x, "is range's upper limit")
```
Gives the following output:
```python
0
1
2
3
4
4 is range's upper limit
```

If loops exit because of a `break` clause, the `else` clause will be skipped:
```python
for i in range(0, 2):
    if i == 1:
        print("a")
        break
    print("b")
else:
    print("c")
```
With the output:
```python
a
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

---
## Quiz

headline: what will the following code snippet print?

question: |
  for i in [1, 2]:
      if i == 1:
          print("a")
          break
      print("b")
  else:
      print("c")

answers:
  - a
  - a a
  - b a
  - a c