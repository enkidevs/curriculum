---
author: emmab
type: normal
category: must-know
links:
  - >-
    [Comment
    Conventions](https://www.python.org/dev/peps/pep-0008/#comments){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Indentation and Commenting


---

## Content

Python is one of the very few programming languages that *relies on the use of indentation* (tabs) to work.

> Usually, one indentation has *four spaces* in Python.

For example:

```python
if True:
  print('Will print this.')
else:
  print('This will not be printed.')
print('What about this one?')
```

The above example returns:

```plain-text
Will print this.
What about this one?
```

If we were to rewrite the above snippet as:

```python
if True:
  print('Will print this.')
else:
  print('This will not be printed.')
  print('What about this one?')
```

The output will be:

```plain-text
Will print this.
```

The indentation determines whether the last call to `print` belongs to the `else` statement or whether it should be called separately from the `if` statement.

As a side note, indentation doesn't matter for *commented out* lines. To comment out lines of code in Python, just use the hash symbol, `#`. For example:

```python
# print('This line is commented out.')
print("This line isn't commented out!")
```


---

## Practice

What will this code print?

```python
if True:
  print('this is true')
else:
  print('this is false')
```

```plain-text
???
```

- `this is true`
- `True`
- `False`
- `this is false`


---

## Revision

Which of the following is a valid Python comment?

```plain-text
// Comment A
/* Comment B */
# Comment C
```

Comment ???

- `C`
- `B`
- `A`
 
