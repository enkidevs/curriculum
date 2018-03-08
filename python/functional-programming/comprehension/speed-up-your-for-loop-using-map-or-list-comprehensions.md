---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - speed-up-code


links:

  - '[docs.python.org](https://docs.python.org/2/library/functions.html#map){website}'

notes: 
---
## Content
# Speed up your `for` loop using `map()` or list comprehensions

The `for` loop interpreter overhead can be huge. So here `map()` functions like a `for` loop in C code.  

Example:

If you need to lowercase all the input strings:

```
lowerList = []
for word in inputList:
    lowerList.append(word.lower())
```
Instead, you can use `map()` to push the loop into compiled C  code:
```
lowerList = map(str.lower, inputList)
```
Also, in Python 2.0 or above, there are list comprehensions:
```
lowerList = [word.lower() \
         for word in inputList]
```
They are both more efficient than simple `for` loop statement.

