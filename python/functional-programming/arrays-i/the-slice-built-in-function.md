---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal
aspects:
  - introduction
  - workout
  - deep
category: must-know
standards:
  python.use-iteration-protocol.1: 10

links:

  - '[Python slice()](https://www.programiz.com/python-programming/methods/built-in/slice){website}'


---

# The `slice` Built-in Function

---
## Content

The `slice` built-in is a constructor which creates a *slice object* representing the set of indices specified by a given range. It can be used to get substrings, subtuples and sublists from their respective sequence objects. The general syntax is of the form:

```python
slice(stop)
# or
slice(start, stop, step)
```

Where the arguments are all integers. Passing only one integer argument causes it to default the other arguments to `None` and take the integer as a 'stop' value. These values mean the following:

 - __start__ - the starting integer where the slice starts. Giving only one integer argument defaults this to `None`, which means the slice starts at index 0, or the beginning of the sequence.
 - __stop__ - the integer value of the index where the slice ends. The slice stops on the index `stop - 1`. If only one integer is given Python assumes it to be the `stop` index.
 - __step__ - the integer value which determines the increment between each index of the slice, i.e. a step of 2 increments the index included in the slice by 2, each step. Giving only one integer argument defaults this to `None`, which means a step of 1.

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

We can also use __negative numbers__ as arguments to `slice`, which creates a slice with the elements in the reverse order, i.e. index -1 would be the last element in the sequence, -2 would be the second-last, etc.[1]

```python
ourString = 'learning-python'
sObject = slice(-1, -7, -1)
print(ourString[sObject])
# Result: nohtyp
```

This concept can be extended to work on tuples, lists, strings etc. in an analogous fashion. Here is an example of extracting sublists and subtuples:

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


* slice
* 4
* 5
* 3

---
## Revision

Use `slice` to remove every second number in the list of numbers.

```python
nList = ['1', '2', '3', '4', '5',
         '6', '7', '8']

sObject = ???(???, ???, ???)
print(nList[sObject])
```


* slice
* 1
* 8
* 2
* 3
* 7
* seq

---
## Quiz
### how does slicing work?

What will be printed by the following snippet?
```python
a = 'enki'
print(a[::-1])
```

 ???

* ikne
* i
* enki
* TypeError: str object is not subscriptable

---
## Footnotes
[1:Negative Numbers]
*Notice how when negative numbers are given as arguments to `slice` its behavior can be made to be analogous to the `reversed` built-in function. Depending on the context, one function may be more suitable than the other in terms of efficiency, legibility or modularity.*
