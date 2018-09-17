---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[pymotw.com](https://pymotw.com/2/re/){website}'
  - '[docs.python.org](https://docs.python.org/3.5/howto/regex.html#regex-howto){website}'

aspects:
  - introduction
  - workout
  - deep
standards:
  python.data-structures-uses.5: 10
  python.native-types-operations.4: 10


---

# Regular expressions

---
## Content

**Regular expressions** (re) are everywhere in programming. These text matching patterns are also available in Python via the `re` module.

Import the module:
```python
import re
```

Regular expressions make use of **special characters** that stand either for classes of normal chars or affect the interpretation of the *RE*.

For example the `ab?` re will match either `a`  or ` ab` while `ab*` will match `a`, `ab` or `a` followed by any numbers of `b`s.

The most common use of the `re` module is to search texts for specified patterns.
```python
text = 'Enki is cool'
if re.search('Enki', text):
    print("Found it!")
# output: Found it!
```

To find start and end indexes of your match:
```python
text = 'Enki is cool'
match = re.search('Enki', text)
print(match.start())
print(match.end())
# 0
# 4
```

---
## Practice

Search the given text for the `abc` pattern:

```
import re
text = “here is abc”
if ???.???(‘abc’, text)
   print(‘found’)
```

* `re`
* `search`
* `pattern`
* `match`
* `find`
* `regex`
* `reg`

---
## Revision

Which Python module provides text matching patterns using regular expressions?

???


* `re`
* `reg`
* `regex`
* `matchpat`
* `RegEx`
