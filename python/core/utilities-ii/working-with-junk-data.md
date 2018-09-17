---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: how to

aspects:
  - workout
  - deep
standards:
  python.native-types-operations.4: 10
  python.data-structures-uses.5: 10
  python.modules.0: 10

links:

  - '[docs.python.org](https://docs.python.org/2/library/difflib.html#sequencematcher-objects){website}'

parent: compare-sequences-with-difflib

---

# Working with junk data

---
## Content

The `SequenceMatcher` class inside `difflib` has its constructor's first argument either defaulted to `None` or a one-argument function that takes a sequence and returns true if the element is **junk** and is to be ignored.

For the sake of the argument we will work with this class' function called `find_longest_match` that will search for the largest match between two sequences[1]:
```python
from difflib import SequenceMatcher

s = SequenceMatcher(None, \
   " abcd", "abcd abcd")
print(s.find_longest_match(0, 5, 0, 9))

# prints Match(a=0, b=4, size=5)

```

`find_longest_match` method called on `s` object takes 4 arguments:
 - `a` starting index.
 - `a` ending index.
 - `b` starting index.
 - `b` ending index.

In our case, the first string is `" abcd"` and the second is `"abcd abcd"` and we are looking to match them as a whole, which means we need `0` to `5` for the first one and `0` to `9` for the second.

See how in the first scenario we searched for the longest match between the two sequences. The one found started in `a` - first input text from index `0 ` and in `b` - second input text from index `4` .


But if we treat white spaces as **Junk** the output will be different:
```python
s = SequenceMatcher(lambda x: x == " ",
                    " abcd", "abcd abcd")
print(s.find_longest_match(0, 5, 0, 9))
# prints Match(a=1, b=0, size=4)
```

---
## Practice

Complete the `SequenceMatcher`  constructor such that empty spaces are treated as junk:

```
s = SequenceMatcher(??? x: x == ???,
    “ abcd”, “abcd abcd”)
```


* `lambda`
* `" "`
* `null`
* `()`
* `if`
* `?`

---
## Revision

What module contains the SequenceMatcher class?

???


* `difflib`
* `difference`
* `seq`
* `sequence`
* `match`
* `matcher`
* `seqlib`
* `matchlib`

---
## Footnotes
[1:Notation]
We will refer to the first sequence as `a` and to the second sequence as `b`.
