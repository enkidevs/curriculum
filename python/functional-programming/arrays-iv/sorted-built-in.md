---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Python
    sorted](https://www.programiz.com/python-programming/methods/built-in/sorted){website}
  - '[Sorting Mini-HOW TO](https://wiki.python.org/moin/HowTo/Sorting/){website}'
  - '[Timsort](https://en.wikipedia.org/wiki/Timsort){website}'
  - '[PEP 3000](https://www.python.org/dev/peps/pep-3100/#id100){website}'
  - >-
    [__cmp__ in Python 2 and
    3](https://stackoverflow.com/questions/8276983/python-2-and-python-3-cmp){website}
---

# The sorted Function 


---

## Content

`sorted` is Python's built-in function for creating a new sorted list from an iterable object. It is distinct from the `sort` built-in function in that `sort` modifies a list 'in-place', i.e. without creating a new list.

For instance:

```python
originalList = [5, 2, 3, 1, 4]
print(sorted(originalList))
# Result: [1, 2, 3, 4, 5]
print(originalList)
# Result: [5, 2, 3, 1, 4]
```

`sorted` can also be used on strings, where Python lexicographically orders individual characters by comparing the Unicode code point number.

```python
pyString = ',.()-.12345ABCDabcd='
print(sorted(pyString))
# result:
# ['(', ')', ',', '-', '.', '.',
#  '1', '2', '3', '4', '5', '=',
#  'A', 'B', 'C', 'D',
#  'a', 'b', 'c', 'd']
```



