---
author: emmab
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

# Introduction to Booleans


---

## Content

Beneath the magic of an `if` statement is another Python data type, `bool`, the **boolean**!

Python uses *booleans* to evaluate conditions. 

> 💡 A boolean variable can take on one of two values, `True` or `False`. 

Using a comparison operator to check whether a condition has been met, such as `x > 2`, returns a boolean value.

```python
x = 3

x > 2
# True
```

This means that once an `if` statement condition evaluates to `True`, the indented code block will run.

```python
hungry = 'very'

if hungry == 'very':
  print('Get some food!')
else:
  print("I bet you're hungry now!")
```

Here, `'Get some food!'` is printed because the condition above evaluates to `True`.

> ⚠️ Python booleans must be *capitalized*, and they belong to the `bool` class.

```python
type(True)
# <class 'bool'>
```


---

## Practice

What would the following conditional statement evaluate to?

```python
x = 21

x >= 21
```

```python
???
```
- `True`
- `False`
- `true` 
- `false`


---

## Revision

What class would the following code return?

```python
type(False)
# <type '???'>
```

- `bool`
- `boolean`
- `Boolean`
- `Bool`
 
 