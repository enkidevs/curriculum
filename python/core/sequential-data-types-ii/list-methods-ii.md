---
author: emmab

type: normal

category: must-know

aspects:
  - introduction
  - workout

links:
 - '[Python List Methods](https://www.programiz.com/python-programming/methods/listl){website}'


---

# List Methods II

---
## Content

So we know about `append`, `extend`, `reverse`, `remove` and `pop`.  There are just a few more `list` methods to know for now!

- The `sort()` method sorts a `list` in ascending order, either alphabetically or numerically:

```python
number_list = [6, 5, 3, 2]

number_list.sort()
print(number_list)
# [2, 3, 5, 6]

letters = ['z' ,'x', 'y']

letters.sort()
print(letters)
# ['x', 'y', 'z']
```

- The `insert()` method *inserts an element at a given index*:

```python
number_list.insert(4, 6)

print(number_list)
# [2, 3, 5, 6, 6]
```

The syntax for this requires that the `index` is given as the *first argument*, and the `item` to insert as the *second argument*.

---
## Practice

Complete the code snippet to return a sorted `list` of `keyboard`:

```python
keyboard = ['q', 'w', 'e', 'r', 't', 'y']

keyboard.???()

# ['e', 'q', 'r', 't', 'w', 'y']
```

* `sort`
* `key`
* `order`
* `priority`
* `change`
* `remove`

---
## Revision

How would you insert the word `'tres'` into the following `list` so that it's at index 2?

```python
list = ['uno', 'dos', 'cuatro']

list.???(???)
# ['uno', 'dos', 'tres', 'cuatro']
```

* `list.insert(2, 'tres')`
* `list.insert(3, tres)`
* `list.append(2, 'tres')`
* `list.extend(2, 'tres)'`
