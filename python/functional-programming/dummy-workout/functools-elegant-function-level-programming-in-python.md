---
author: Bruno

levels:

  - advanced

  - medium

type: normal

category: tip

links:

  - '[functools](https://docs.python.org/2/library/functools.html){documentation}'

  - '[Sorting Mini-HOW TO](https://wiki.python.org/moin/HowTo/Sorting){tutorial}'

---
# Functools: elegant function-level programming in Python.

---
## Content

The `functool` library offers very useful methods to manipulate functions.  
The most commonly used is `partial`:
```
def plus(a,b):
  return a+b;

plus2 = functools.partial(b=2);

map(plus2,[1,2,3])
#> [3, 4, 5]
```
Other methods can transform functions to simplify comparison and ordering.
For instance, `cmp_to_key` can turn a comparator into a key function. 
```
from functools import cmp_to_key

def rev_diff(x, y):
  return y - x;

rev = cmp_to_key(rev_diff)

sorted([5,1,3,4], key = rev)
#> [5,4,3,1]
```
 
