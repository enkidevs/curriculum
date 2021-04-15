---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [More Information About
    I/O](https://www.tutorialspoint.com/python/python_files_io.htm){website}
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

# I/O Functions


---

## Content

`I/O` (input/output) stands for the communication between a **data processing system** such as a computer, or any device, and the **outside world**.

Python provides numerous out-of-the-box functions for `I/O` communication, making the interactions fairly easy.

The most **basic output** function in **Python** is `print()`[1]. The arguments passed to it will be converted to **strings** and they will be outputted to the `stdout`[2].

The syntax simply is:

```py
print('This is a print statement.')
```

This will produce the following result on your screen:

```plain-text
This is a print statement.
```

For managing user input, **Python 3** provides a built-in function called `input()`. When using this **function** the program is **paused** and **waits** until the user finishes his input. You can also pass an **optional** string parameter to this function which will prompt the user with the given message.

Consider the following scenario:

```python
# user input will be assigned to `str`
str = input('Please enter your input: ')
# program will wait here for user input

# print the user input
print("The input is: ", str)

# print the type of `str`
print(type(str))
```

The `stdout` will look like:

```plain-text
Please enter your input: Hello
The input is: Hello
<class 'str'>
```

> The **input** of the user will **always** be returned as a `string` without any additional changes. 

If this **raw input** has to be transformed into another **data type** needed by the **program**, a `casting` function can be used. 

In the following example, we will use a **casting function** to find out the age of the user by converting the inputted string to an `int`:

```python
age = int(input('How old are you? '))
print(age, type(age))
```

The `stdout` will look like this:

```plain-text
How old are you? 21
21 <class 'int'>
```


---

## Practice

What will be the type of the `age` variable?

```py
age = input('How old are you? ')
print(age, type(age))
```

```plain-text
How old are you? 23
23 <class '???'>
```

- `str`
- `int`
- `list`
- `tuple`


---

## Revision

Suppose we want to add `10` to somebody's age. Fill the gaps accordingly to convert the input from a `string` to an `integer`:

```py
your_age = ???(input('How old are you?'))
???(your_age + 10)
```

- `int`
- `print`
- `int()`
- `print()`
- `eval`
- `cast`
- `in`
- `eval()`
- `cast()`
- `in()`
- `string()`


---

## Footnotes

[1: print]
In Python 2 we had the `print` statement, later in Python 3 that statement was replaced by the function `print()`

```py
# Python 2
print 'Hello'
# Python 3
print('Hello')
```

[2: stdout]
Standard streams are preconnected communication channels between a computer program and its environment when it begins execution. There are 3 main connections standard input (`stdin`), standard output (`stdout`) and standard error (`stderr`).
 
