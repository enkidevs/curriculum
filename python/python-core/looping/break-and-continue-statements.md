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
    - type-in-the-gap
  context: standalone
---

# break & continue

---

## Content

Python's `break` statement is used to exit out of a loop before the loop is finished.

The code execution will continue at the first statement outside of the loop.

For example:

```python
x = 5
while (x > 0):
  if (x == 2):
    # exit the loop
    # when x equals 2
    break
  print(x)
  x = x - 1

print("Broken away!")
```

This gives the following output:

```plain-text
5
4
3
Broken away!
```

Python's `continue` statement is used to skip only one iteration[1] of a loop.

The code execution will proceed to the beginning of the next loop iteration.

For example, here's how we can print only odd numbers by skipping every even loop iteration:

```python
for x in range(0, 10):
  if (x % 2 == 0):
    # skip iteration if x is even
    continue
  print(x)
```

This gives the following output:

```plain-text
1
3
5
7
9
```

> 💡 `break` and `continue` can be used in either a `for` or a `while` loop


---

## Practice

Which keyword is used to skip one loop cycle, and to resume execution at the start of the next one?

```python
???
```

- `continue`
- `break`
- `restart`


---

## Revision

Which keyword is used to terminate a loop before it's finished executing?

```python
???
```

- `break`
- `continue`
- `next`
 
---

## Footnotes
[1: Loop Iteration]
A loop iteration is another way to call a loop cycle.

For a loop running some code five times, there are five loop iterations.
