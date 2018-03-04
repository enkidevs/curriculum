# Using a `list` as a `stack`
author: catalin

levels:

  - basic

type: normal

category: how to

parent: built-in-list-methods

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#using-lists-as-stacks){website}

---
## Content

The `stack` abstract data structure is widely used in computer science. This collection is implemented to best fit the **LIFO** principle ( **last in**, **first out** ). Sometimes we need one data structure that behaves in such a manner. 

Even though `python` does not provide a special `stack` data structure, `list`'s can easily be used in the scope.

```python
stack = [1,2,3]
stack.append(4)
# adds 4 at the end
stack.append(5)
print stack
>>> [1, 2, 4, 5]
# removes and return last element
print stack.pop()
>>> 5
```

By definition, we don't access the elements of a stack by index, we only use methods that add or remove elements from the top of the stack. We use two methods for this purpose:
- `append()`, which adds an element at the back of the stack ( on the last position )
- `pop()`, which removes the element at the back of the stack ( most recently added )

---
## Practice

What’s the output of the following code snippet:

```python
stack = [‘10’, ‘11’, ‘12’, ‘13’]
stack.append(14)
stack.append(15)
stack.pop()
```

???
* `15`
* `14`
* `10`
* There’s no output...
