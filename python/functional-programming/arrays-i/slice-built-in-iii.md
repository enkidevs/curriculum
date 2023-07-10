---
author: lior-bd
type: normal
category: must-know
links:
  - >-
    [Python
    slice()](https://www.programiz.com/python-programming/methods/built-in/slice){website}
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

# Advanced slice

---

## Content


We can also use **negative numbers** as arguments to `slice`, which will count indexes in reverse order.[1]

```python
ourString = 'learning-python'
sObject = slice(-1, -7, -1)
print(ourString[sObject])
# Result: nohtyp
```

You can also use `slice` on lists and tuples:

```python
eList = ['E', 'N', 'K', 'I']
eTuple = ('E', 'N', 'K', 'I')

sObject = slice(3)
print(eList[sObject])
# Result: ['E', 'N', 'K']

sObject = slice(1, 5, 2)
print(eTuple[sObject])
# Result: ('N', 'I')
```



---

## Practice

Use `slice` to extract the substring 'spam' from 'spam-eggs-ham-chips' by filling in the gaps.

```python
ourString = 'spam-eggs-ham-chips'

sObject = ???(???)
print(ourString[sObject])
```

- slice
- 4
- 5
- 3


---

## Revision

Use `slice` to remove every second number in the list of numbers.

```python
nList = ['1', '2', '3', '4', '5', '6', '7', '8']

sObject = ???(???, ???, ???)
print(nList[sObject])
```

- slice
- 1
- 8
- 2
- 3
- 7
- seq


---

## Quiz

### how does slicing work?


What will be printed by the following snippet?

```python
a = 'enki'
print(a[::-1])
```

 ???

- ikne
- i
- enki
- TypeError: str object is not subscriptable


---

## Footnotes

[1:Negative Numbers]
*Notice how when negative numbers are given as arguments to `slice` its behavior can be made to be analogous to the `reversed` built-in function. Depending on the context, one function may be more suitable than the other in terms of efficiency, legibility or modularity.*
 
