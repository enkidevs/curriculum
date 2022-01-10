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

# The sorted Function 


---

## Content

`sorted` is Python's built-in function for creating a new sorted list from an iterable object. It is distinct from the `sort` built-in function in that `sort` modifies a list 'in-place', i.e. without creating a new list. The `sorted` function takes the general form:

```python
sorted(iterable [, key] [, reverse])
```

Where:

- `iterable` is the iterable object to be sorted. This argument in mandatory.
- `key` is the function which serves as the comparison the sort will be based on. The default is `None`, so the input is directly compared. This argument is *optional*.
- `reverse` is a boolean which, if True, reverses the result of the sort. This argument is *optional*.

The simplest use of sorted is in the ordering of numbers. Consider the code below:

```python
sorted([5, 2, 3, 1, 4])
```

returns a numerically-sorted list:

```python
[1, 2, 3, 4, 5]
```

The optional `reverse` argument can be given:

```python
sorted([5, 2, 3, 1, 4], reverse=True)
```

this returns the reversed numerically-sorted list:

```python
[5, 4, 3, 2, 1]
```

Behind the scenes, Python calls a derivative of merge-sort on the list (*Timsort*[1]), a recursive sorting algorithm which is efficient because it only requires the calling of the comparison function once per element in the input `iterable`. Being able to use the `sorted` function whenever we need to order a large data set is very useful since we don't need to worry about the efficiency of our algorithm when we use a readily-available, efficient and popular feature of the language.

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
*Technically, the sort algorithm in Python since version 2.3 has been Timsort, named after creator Tim Peters. It is derived from a hybrid approach of merge sort and insertion sort. Timsort finds subsequences of the data that are already sorted and uses the information found there to sort the rest of the list more effectively. For more information, see the Wikipedia page in the Learn More section titled 'Timsort'.*
 
