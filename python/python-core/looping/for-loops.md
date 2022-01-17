---
author: tommarshall
type: normal
category: must-know
links:
  - >-
    [Control flow in
    Python](https://docs.python.org/3/tutorial/controlflow.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# for loops


---

## Content

`for` loops are used in most programming languages to iterate over a defined sequence.

The standard Python `for` loop syntax is:

```python
for iterating_num in sequence:
  doSomething()
```

An example `for` loop:

```python
for letter in 'Enki':
  print('Letter: ', letter)
```

Gives this output:

```plain-text
Letter:  E
Letter:  n
Letter:  k
Letter:  i
```

When writing a loop, Python will assign each value of the list to `x`, one by one in the same order found in the list. 

```python
nums = [1, 2, 3]

for x in nums:
  print(x)
```

Gives this output:

```plain-text
1
2
3
```


---

## Practice

What’s the output of the following code snippet:

```py
for x in [0, 1, 2, 3, 4, 5]:
  if (x % 2 == 0):
    print(x)
```

???

- `0 2 4`
- `0 1 2 3 4 5`
- `2 4`
- `1 3 5`


---

## Revision

What’s the output of the following code snippet:

```py
for letter in 'Python':
  print(letter)
```

???

- `P y t h o n`
- `letter`
- `null`
- `error`
 
