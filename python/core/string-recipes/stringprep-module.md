---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: feature

inAlgoPool: false


standards:
  python.data-structures-uses.5: 10
  python.native-types-operations.4: 10
  python.store-manipulate-data.3: 10
aspects:
  - introduction
  - workout
  - deep
  - obscura
links:

  - '[docs.python.org](https://docs.python.org/2/library/stringprep.html){website}'
  - '[www.ietf.org](https://www.ietf.org/rfc/rfc3454.txt){website}'


---

# `stringprep` module

---
## Content

The **RFC 3454** international memo defines the procedure of *preparing* Unicode string as to be suitable for internet protocols. It basically provides a set of specialized tables of code points.

Often, it is necessary to compare identifications for things such as **host names** for **equality**.

The main purpose of **RFC 3454** is providing a framework for ensuring string input and comparison work for users throughout the world.

Python provides the `stringprep` module filled with static methods used for checking if your input is in the specified **RFC 3454** table.

Check if a code is inside table `A.1` (unassigned code points):
```python
import stringprep

print(stringprep.in_table_a1('Ș'))
# False
```

Check if a code point is in table `C.1.1` (ASCII space characters):
```python
print(stringprep.in_table_c11(' '))
# True
```

---
## Practice

Check if `tab` is in the table `C.1.1` of RFC 3454:

```python
import stringprep

???(stringprep.???('  '))

```

* print
* in_table_c11
* ' '
* in_table_a1
* in_c11
* zip



---
## Revision

Check if the given character is in table `C.1.1` of RFC 3454:

```python
import stringrep

???.???('x')
```


* `stringrep`
* `in_table_c11`
* `table_c11`
* `table_c_1_1`
* `table_c1_1`
* `rfc`
* `rfc3454`
