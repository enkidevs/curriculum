---
author: tommarshall

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction

inAlgoPool: false

standards:
  python.control-structures.0: 10
  python.use-iteration-protocol.0: 10


---

# Nested Loops

---
## Content

A nested loop in Python is where you have one loop inside of another loop. The inner loop will complete an entire sequence while the outer loop will increment once.

Here is the standard syntax whilst using `for` loops:

```python
for x in sequence:
  for x in sequence:
    doSomething()
  doSomethingElse()
```
The standard syntax when using a `while` loop:
```python
while condition:
  while condition:
    doSomething()
  doSomethingElse()
```
For example:

```python
letters = ["a", "b", "c"]

for letter in letters:
  print(letter)
  for x in range(0, 3):
    print(x)
```
Gives the following output:

```python
a
0
1
2
b
0
1
2
c
0
1
2
```

---
## Practice

Choose the correct output for the following snippet:

```python
for i in [1,2]:
  print(i)
  for j in range(0,2):
    print(0)

```

???

* 1 0 0 2 0 0
* 0 0 1 0 0 2
* 1 0 1 2 0 1


---
## Revision

How do nested loops work?
???


* The outer loop increments once per full cycle of the inner loop.
* The inner loop increments once per full cycle of the outer loop.
* The inner and outer loops increment simultaneously.
