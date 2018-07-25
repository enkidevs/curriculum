---
author: tommarshall

levels:

  - beginner

type: normal
aspects:
  - introduction
category: must-know

inAlgoPool: false


standards:
  python.identify-python-syntax.2: 10

links:

  - '[Comment conventions](https://www.python.org/dev/peps/pep-0008/#comments){website}'


---

# Indentation and Commenting

---
## Content

Unlike many other programming languages, Python uses indentation (tabs) to separate blocks of code instead of containing them with curly braces.

Tabs and spaces are both supported with the standard Python. One indentation has four spaces. For example:
```python
if True:
    print('Will print this.')
else:
    print('This will not be printed.')
print('What about this one?')
```

When run from the command line, the above will output:
```
Will print this.
What about this one?
```

If we were to write the above snippet as such:
```python
if True:
    print('Will print this.')
else:
    print('This will not be printed.')
    print('What about this one?')
```

The output will be:
```
Will print this.
```

The indentation of the last call to `print` determines whether it belongs to the `else` clause or should be invoked independent of the `if-else` conditions.

On the other hand, commented lines don't have any requirements for indentation: they just won't be run. To comment out lines of code in Python, use the hash symbol, `#`. For example:
```python
# print("This line is commented out.")
print("This line isn't commented out!")
```

---
## Practice

What will this code print?
```
if True:
print("this is true")
else:
print("this is false")

```
???

* `SyntaxError`
* `True`
* `False`
* `"this is true"`
* `"this is false"`

---
## Revision

Which of the following is a valid Python comment?

```
// Comment A
/* Comment B */
# Comment C
```
???

* `Comment C`
* `Comment B`
* `Comment A`
