---
author: tommarshall

tags:

  - introduction

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
inAlgoPool: false

standards:
  python.native-types-operations.4: 10

---

# Lists

---
## Content

Lists are containers of objects. They can contain any variable type, and be any number of entries long.

To build a list:
```python
pyList = []
```
To add to a list:
```python
pyList.append(11)
pyList.append(4)
```

Refer to an item in a list by its index. Python is zero-indexed, meaning the first item in a list is at position 0:
```python
print(pyList[0])
# prints 11

print(pyList[1])
# prints 4
```

A `for` loop will iterate over each value in a list, one at a time:

```python
for x in pyList:
    print(x)

# prints 11, 4
```

---
## Practice

Complete the code snippet to add a value to the list:

```
newList = []
newList.???(5)
```


* `append`
* `add`
* `push`

---
## Revision

Complete the code snippet to view item 0 in the list:

```
newList = []
newList.append(2)

???(newList???)
```


* `print`
* `[0]`
* `{0}`
* `view`
* `append`
* `(0)`
