---
author: tommarshall
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# while loops


---

## Content

Python's `while` loops repeatedly loop and execute some code *while* a boolean statement evaluates to true.

The standard `while` loop syntax is:

```python
while condition:
  doSomething()
```

While the condition evaluates to *true*, the code inside the loop is executed. As soon as the condition evaluates to *false*, the loop is exited and the code immediately following the loop is executed.

For example:

```python
counter = 0
while counter < 5:
  print(counter)
  counter = counter + 1
```

Gives the following output:

```plain-text
0
1
2
3
4
```


---

## Practice

Print the all numbers between 0 and 10 *inclusive*:

```python
x = 0
while x < ???:
  ???
  ???
```

- 11
- print(x)
- x = x + 1
- 10
- x++
- x + 1


---

## Revision

What’s the output of the following code snippet:

```python
x = 0
while x < 5:
  x = x + 1
  print(x)
```

???

- `1 2 3 4 5`
- `0 1 2 3 4`
- `1 2 3 4`
- `0 1 2 3 4 5`
 
