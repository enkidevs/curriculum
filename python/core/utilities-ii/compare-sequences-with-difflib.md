---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature
aspects:
  - workout
  - deep
standards:
  python.data-structures-uses.5: 10
  python.modules.0: 10
  python.native-types-operations.4: 10

links:

  - '[pymotw.com](https://pymotw.com/2/difflib/){website}'


---

# Compare sequences with `difflib`

---
## Content

Another useful Python module  crafted for comparing sequences (even files and text) is `difflib`.

Import the module:
```python
import difflib
```

 It provides classes and functions such as `Differ` (for lines of text) or `HtmlDiff` to show the differences in a human readable form, like the Unix diff command.

To see the differences between two text strings (`text_A` and `text_B`) the `Differ`'s `compare` function can be used:
```python
text_A = """abcde \n fgh"""
text_B = """abcde \n ijk"""
d = difflib.Differ()
diff = d.compare(text_A, text_B)
print('\n'.join(diff))

```

This will print the whole text once again with differences highlighted by line with either `-` or `+` signs:
```python
# abcde are the same for both
# -f / -g / -h
# +i / +j / +k
```
The same result is achieved with `difflib.ndiff`.

To show only the differences and some context:
```python
diff = difflib.unified_diff(text_A, text_B)
print('\n'.join(diff))
```

---
## Practice

Use `Differ` class to print the differences between texts `a` and `b`  :

```
import difflib
a = “abc \n xyz”
b = “abc \n plm”
d = difflib.???()
diff = d.???(a, b)
print(‘\n’.join(diff))
```


* `Differ`
* `compare`
* `diff`
* `join`
* `concat`
* `difflib`
* `Diff`
* `HtmlDiff`
* `ndif`

---
## Revision

What class from `difflib` with a `compare` method can be used to see differences between two text strings?

???


* `Differ`
* `SequenceMatcher`
* `ndiff`
* `HtmlDiff`
