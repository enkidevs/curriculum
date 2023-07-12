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
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Advanced use of sorted 


---

## Content
The `sorted` function takes the general form:

```python
sorted(iterable, key, reverse)
```

Where:

- `iterable` is the iterable object to be sorted.

- `key` is an optional comparison function. For instance, we can sort strings by size:

```python
print(sorted(["Blueberry", "Banana", "Orange"], key=len))
# Result: ['Banana', 'Orange', 'Blueberry']
```

- `reverse` is an optional boolean which, if True, reverses the result of the sort:
```python
print(sorted([5, 2, 3, 1, 4], reverse=True))
# Result: [5, 4, 3, 2, 1]
```


Behind the scenes, Python calls a derivative of merge-sort on the list (*Timsort*[1]), an efficient recursive sorting algorithm.

---

## Practice

What is the result of the execution of the following code snippet?

```python
print(sorted([4, 0, 2, 3, 1, 5]))
```

???

- `[0, 1, 2, 3, 4, 5]`
- `[5, 4, 3, 2, 1, 0]`
- `[4, 0, 2, 3, 1, 5]`
- `[5, 1, 3, 2, 0, 4]`


---

## Revision

What is the result of the execution of the following code snippet?

```python
print(sorted([0, 2, 3, 1, 'a', 'b', 'A', 'B']))
```

???

- `[0, 1, 2, 3, 'A', 'B', 'a', 'b']`
- `['A', 'B', 'a', 'b', 0, 1, 2, 3,]`
- `[0, 1, 2, 3, 'a', 'b', 'A', 'B']`


---

## Footnotes

[1:Timsort]
Technically, the sort algorithm in Python since version 2.3 has been Timsort, named after creator Tim Peters. It is derived from a hybrid approach of merge sort and insertion sort. Timsort finds subsequences of the data that are already sorted and uses the information found there to sort the rest of the list more effectively. For more information, see the Wikipedia page in the Learn More section titled 'Timsort'.
 
