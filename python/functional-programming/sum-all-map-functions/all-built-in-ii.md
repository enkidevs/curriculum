---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Truthiness in Python](https://www.geeksforgeeks.org/truthy-vs-falsy-values-in-python/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Truthiness


---

## Content

Woah! Why are `1` and `abc` evaluated as `True`:

```python
print(all([1, 'abc', True]))
# result = True
print(all([" ", 'abc']))
# Result = True
print(all(["", 'abc']))
# Result = False
```

This is called *truthiness*[1] in Python. Each type has specific rules regarding what boolean value they evaluate as. 

For example:
- non-zero numbers and non-empty strings will evaluate as `True`. 
- `0` and `""` will be evaluated as `False`.


---

## Practice

What is the result of the execution of the following code snippet?

```python
print(all([" ", 'abc', 12, 145]))
```

???

- True
- False
- TypeError


---

## Revision

What is the result of the execution of the following code snippet?

```python
print(all([" ", 'abc', 12, 145, '']))
```

???

- False
- True
- TypeError


---

## Footnotes

[1:Python Truthiness]
Using the `bool` built-in function, we can check the truthiness of any object in Python. The truthiness rules can be examined at length in the Learn More section. Truthiness can be a useful shortcut when performing operations on non-boolean types.
 