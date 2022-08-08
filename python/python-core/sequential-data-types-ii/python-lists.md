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

A list is a **sequential data type** that acts as a container for objects. 

Lists are separated by commas, and *must be wrapped in square brackets*, `[ ]`.

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

> We can also use our `index` and `count` methods that we learned about back in the [Tuple Methods lesson](https://app.enki.com/insights/tuple-methods).

Let's discover some more `list` methods next!

> 🤔 What's the difference between a [tuple](https://app.enki.com/python-core/sequential-data-types-ii/the-fundamental-tuples) and a list?

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
