---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Lists


---

## Content

Lists are another **sequential data type** that act as containers for objects. 

Lists are also separated by commas, and *must be wrapped in square brackets*, `[ ]`.

```python
my_first_list = ['apples', 'oranges']
```

> Lists are **mutable**, so items *can be modified*.

```python
my_first_list[0] = 'bananas'

print(my_first_list)
# ['bananas', 'oranges']
```

To add to a list you can use the `append()` method, passing whatever you want added as an argument in parentheses:

```python
my_first_list.append('pears')

print(my_first_list)
# ['bananas', 'oranges', 'pears']
```

We can also use our `index` and `count` methods that we learnt about back in the `tuple` days on lists.

Let's discover some more `list` methods next!


---

## Practice

Complete the code snippet to add a value to the `list`:

```python
new_list = []
new_list.???(5)
```

- `append`
- `add`
- `push`
- `index`


---

## Revision

Complete the code snippet to return item at index `0` in the `list`:

```python
new_list = []
new_list.append(2)

new_list???
```

- `[0]`
- `{0}`
- `view`
- `append`
- `(0)`
