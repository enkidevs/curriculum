---
author: catalin

levels:

  - basic

type: normal

category: how to


standards:
  py.native-types-operations.4: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#using-lists-as-stacks){website}'

parent: built-in-list-methods

---

# Using a `list` as a `stack`

---
## Content

The `stack` abstract data type is widely used in all computer science. It basically serves as a collection where elements comes off based on the **LIFO** principle ( **last in**, **first out** ).

Even though `python` does not provide a special `stack` data type, `list`s can easily be used in the scope.

```python
>>> stack = [1,2,3]
>>> stack.append(4)
# adds 4 at the end
>>> stack.append(5)
>>> stack
[1,2,3,4,5]
>>> stack.pop()
# removes and return last element
5
>>> stack.pop()
4
>>> stack
[1,2,3]
```
Instead of the general `push` and `pop` actions, `append` and `pop` methods with no specified *index* are used.

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
