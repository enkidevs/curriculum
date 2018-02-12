# Indentation and Commenting
author: tommarshall

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

standards:
  py.identify-python-syntax.2: 10

links:

  - >-
    [Comment
    conventions](https://www.python.org/dev/peps/pep-0008/#comments){website}

---
## Content

Unlike many other programming languages, Python uses indentation (tabs) to separate blocks of code instead of curly braces.

Tabs and spaces are both supported with the standard Python code indentation being four spaces. For example:
```python
indent = 4
if indent == 4:
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
indent = 4
if indent == 4:
    print('Will print this.')
else:
    print('This will not be printed.')
    print('What about this one?')
```
The output will be:
```
Will print this.
```
The indentation the last `print` determines whether it belongs to the `else` clause or it should be invoked independent of the `if-else` conditions.

On the other hand, commented lines do not care about indentation: they won't just be run. To comment out lines of code in Python, you must use a hash, `#`. For example:
```python
# print("This line is commented out.")
print("This line isn't commented out!")
```

---
## Practice

How many spaces is a standard amount for indentation in Python?
???
*`4`
*`2`
*`1`
*`6`

---
## Revision

Which of the following is a valid Python comment?

```
// Comment A
/* Comment B */
#Comment C
```
???

*`Comment C`
*`Comment B`
*`Comment A`
