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

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#bytes-and-bytearray-operations){website}'

parent: bytes-type
notes: ''

standards:
  python.data-structures-uses.3: 10
  python.native-types-operations.11: 10


---


# Operations with `bytes` and `bytearray`

---
## Content

Both `bytes` and `bytearray` support **common** special operations not only with operand of the same type, but with any **bytes-like** objects.

Arguments should not be strings, but conversions:
```python
a = bytes(b"abc") # bytes object
b = a.replace("a", "f")  # will raise error
b = a.replace(b"a", b"f") # will work
print (b)
# output: b'fbc'
```

Most of the following methods have been introduced in Python's version 3.1 or modified later on.

You can `count` the occurrences of a subsequence:
```python
a = bytearray(b"ababab")
print(a.count(b"a"))
# output: 3
```

You can check if all bytes in the sequence are **ASCII alphanumeric** characters:
```python
>>> (b'abc').isalnum()
True
>>> (b'abc?').isalnum()
False
```
You can create **copy** of the bytes, zero-filled to a specified width. This is useful in generating formatted report columns:
```python
>>> (b"37").zfill(6)
b'000037'
```
You can `strip` a `bytes` object to remove leading or trailing bytes from a specified sequence given as argument:
```python
>>> (b'www.enki.com').strip(b'wcom.')
b'enki'
```

---
## Practice

Create a copy of the bytes 0 filled to a specified width:

```
>>> (b"19").???(5)
b'00019'
```


* `zfill`
* `fill0`
* `zero-fill`
* `zerofill`

---
## Revision

Check if all the bytes in the sequence are ASCII alphanumeric characters:

```
>>> (b'enki').???()
True
```


* `isalnum`
* `isalphanum`
* `isalpnum`
* `isnum`
