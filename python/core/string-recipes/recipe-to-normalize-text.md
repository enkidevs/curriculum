---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

standards:
  python.data-structures-uses.5: 10
  python.native-types-operations.4: 10
  python.store-manipulate-data.4: 10

aspects:
  - introduction
  - workout
  - deep


links:

  - '[gist.github.com](https://gist.github.com/j4mie/557354){website}'

parent: unicode-character-database-at-your-hands

---

# Recipe to normalize text

---
## Content

Using the `unicodedata` Python module it's  easy to normalize any **unicode** data strings (remove accents etc):

```python
import unicodedata

data = u'ïnvéntìvé'
normal = unicodedata.normalize\
    ('NFKD', data).\
    encode('ASCII', 'ignore')
print(normal)

```

The output will be:
```python
b'inventive'
```

The `NFKD` stands for Normalization Form Compatibility Decomposition, and this is where characters are decomposed by compatibility, also multiple combining characters are arranged in a specific order.

---
## Practice

Complete the code recipe below such that the text is normalized:

```
import unicodedata

data = u'ïnvéntìve'
normal = unicodedata.???\
    ('NFKD', data).\
    ???('ASCII', 'ignore')
print(normal)
```           

* `normalize`
* `encode`
* `decode`
* `bytes`
* `string`
* `mod`
* `text`

---
## Revision

What module has the `normalize` method used to normalise unicode data strings?

???


* `unicodedata`
* `unicode`
* `normal`
* `normalize`
