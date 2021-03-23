---
author: emmab
type: normal
category: how-to
links:
  - >-
    [Python List
    Methods](https://www.programiz.com/python-programming/methods/list){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# List Methods I


---

## Content

Python has many built-in `list` methods. Here are some of the most handy ones to know about!

```python
number_list = [1, 2, 3, 4, 5]
```

- The `extend()` method extends one list with the contents of another list:

```python
more_numbers = [6, 7]

number_list.extend(more_numbers)

print(number_list)
# [1, 2, 3, 4, 5, 6, 7]
```

- The `reverse()` method reverses the items in a list:

```python
number_list.reverse()

print(number_list)
# [7, 6, 5, 4, 3, 2, 1]
```

- The `remove()` method deletes specific items:

```python
number_list.remove(7)
# will remove only the first occurrence of the `item`

print(number_list)
# [6, 5, 4, 3, 2, 1]
```

- The `pop()` method can be used to remove the last item, or to remove an item at a given *index*:

```python
number_list.pop()
# 1

number_list.pop(2)
# 4

print(number_list)
# [6, 5, 3, 2]
```


---

## Practice

Extend `positive` with `negative`:

```python
positive = [1, 2, 3, 4]
negative = [-1, -2, -3, -4]

???.???(???)
```

- positive
- extend
- negative
- concatenate
- append


---

## Revision

Which of the following would NOT work to remove the element at index `3`:

```python
pancake = ['eggs', 'flour', 'milk', 'butter']
```

???

- `pancake.remove(3)`
- `pancake.remove('butter')`
- `pancake.pop()`
- `pancake.pop(3)`
