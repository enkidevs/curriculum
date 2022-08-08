---
author: tommarshall
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using else in loops


---

## Content

Unlike other programming languages such as C, Python allows the use of `else` statements with loops.

They are implemented so that once a `for` or a `while` loop condition evaluates to false, the `else` is executed. In other words, the `else` statement is called **once** when the loop exits naturally.

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

```plain-text
0
1
2
3 is too big!
```

Also, an `else` statement integrated into a `for` loop in a similar example:

```python
for x in range(0, 5):
  print(x)
else:
  print(x, "is range's upper limit")
```

Gives the following output:

```plain-text
0
1
2
3
4
4 is range's upper limit
```

If a loop exits because of a `break` clause, the `else` clause will be skipped:

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

```plain-text
b
a
```


---

## Practice

Fill in the following snippet such that it will print `"Computation Done"` when the while loop terminates:

```python
x = 0
while x ??? 3:
  print("running")
  x = x + 1
???:
  ???("Computation Done")
```

- `<`
- else
- print
- `>`
- if
- elif


---

## Revision

An `else` statement is used in loops when the loop's ??? is evaluated to ???.

- condition
- false
- null
- true
- statement
- parameter


---

## Quiz

### what will the following code snippet print?


```python
for i in [1, 2]:
  if i == 1:
    print("a")
    break
  print("b")
else:
  print("c")
```

 ???

- a
- a a
- b a
- a c
 
