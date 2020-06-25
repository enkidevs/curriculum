---
author: catalin

levels:

  - basic

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


parent: compare-sequences-with-difflib

---

# Get the similarity ratio of two sequences

---
## Content

`difflib`'s `SequenceMatcher` class and its ratio method makes it easy to compute  the "similarity" of two sequences.

```python
import difflib

a = (1, 2, 3, 4, 5)
b = (1, 2, 'a', 'b', 'c')

seq = difflib.SequenceMatcher(None, a, b)
d = seq.ratio() * 100

print(d)

```
With the output:
```python
40.0
```
*Junk* sequences (such as whitespace or blank lines) can be passed as the first argument of the function, for them not to be taken into account. The default value is `None`, when nothing is ignored.

It can be used to compare sequences of characters as well, i.e. strings.

---
## Practice

Instantiate a `SequenceMatcher` object with the given sequences and print the similarity ratio:

```
import difflib
a = (1, 2, 3, ‘x’)
b = (1, 2)

s = ???
    .???(None, a, b)
print(s.???() *100)
// 50%
```


* `difflib`
* `SequenceMatcher`
* `ratio`
* `r`
* `similarity`
* `diff`
* `Sequence`
* `Matcher`
* `get_similarity`

---
## Revision

What function of `SequenceMatcher`  can be used to get the similarity of two sequences?

???


* `ratio`
* `sim`
* `similarity`
* `r`
* `s`
* `get_similarity`
