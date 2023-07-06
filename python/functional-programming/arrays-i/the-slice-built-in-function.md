---
author: stefkn
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

# The slice Function


---

## Content

Functional programming is a style of programming where we use functions as self-contained multi-purpose formulas.

We'll delve into Python's functions like `slice`, `reverse`, `zip`, `sum`, and `all` to show how clean and powerful Functional Programming can be!

### Slice

The `slice` built-in function creates index ranges that we can use to extract components from lists and strings:

You can slice in two ways:
```python
slice(stop)
# or
slice(start, stop, step)
```
Where the different parameters are:
- **start** - the index where the slice starts. Defaults to 0
- **stop** - the index where the slice ends. The slice stops on the index `stop - 1`. If only one integer is given to the function Python assumes it to be the `stop` index.
- **step** - the increment between each index of the slice, i.e. a step of 2 increments the index included in the slice by 2, each step. Defaults to 1.

Consider the following example, where we use `slice` to extract a substring from a string.

```python
ourString = 'learning-python'

sObject = slice(8)
# Equivalent to slice(None, 8, None)
print(ourString[sObject])
# Result: learning

sObject = slice(3, 11, 2)
print(ourString[sObject])
# Result: rigp
```

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
 
