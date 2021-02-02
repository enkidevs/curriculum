---
author: catalin
type: normal
category: how-to
links:
  - >-
    [docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#using-lists-as-stacks){website}
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

# Using a list as a stack


---

## Content

The stack abstract data structure is widely used in computer science. This collection is implemented to best fit the **LIFO** principle ( **last in**, **first out** ). Sometimes we need one data structure that behaves in such a manner.

Even though python does not provide a special stack data structure, lists can easily be used in the scope.

```python
stack = [1,2,3]
# adds 4 at the end
stack.append(4)
print(stack)
>>> [1, 2, 3, 4]
# remove and return the last element
print(stack.pop())
>>> 4
```

By definition, we don't access the elements of a stack by index, we only use methods that add or remove elements from the top of the stack. We use two methods for this purpose:

- `append()`, which adds an element at the back of the stack ( on the last position )
- `pop()`, which removes the element at the back of the stack ( most recently added )


---

## Practice

Given the following stack (implemented using lists), remove the last element and add a new element with value 20:

```python
stack = [11, 15, 16, 18]

stack.???
???.???
```

- `pop()`
- `stack`
- `append(20)`
- `append()`
- `push(20)`


---

## Revision

What’s the output of the following code snippet:

```python
stack = [‘10’, ‘11’, ‘12’, ‘13’]
stack.append(14)
stack.append(15)
stack.pop()
print(stack)

// ???
```

- `['10', '11’, ’12', '13', 14]`
- `14`
- `15`
- There’s no output...
 
