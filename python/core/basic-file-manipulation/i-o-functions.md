---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know
aspects:
  - introduction
standards:
  python.standard-library-operating-system.5: 10

links:

  - '[More information about I/O](https://www.tutorialspoint.com/python/python_files_io.htm){website}'


---

# I/O Functions

---
## Content

`I/O`(input/output) stands for the communication between a **data processing system** such as a computer, or any device, and the **outside world**.

Python provides numerous out-of-the-box function for `I/O` communication, making the interactions fairly easy.


The most **basic output** function in **Python** is `print()`[1]. The arguments passed to it will be converted to **strings** and they will be outputed to the `stdout`[2].

The syntax simply is:
```
print('This is a print statement.')
```
This will produce the following result on your screen:
```
This is a print statement.
```

For managing user input, **Python 3** provides a built-in function called `input()`. When using this **function** the program is **paused** and **waits** until the user finishes his input. You can also pass an **optional** string parameter to this function which will prompt the user with the given message.

Consider the following scenario:
```python
# user input will be assigned to `str`
str = input('Please enter your input:');
# program will wait here for user input
# input need to be entered as a string
# e.g 'Hello'

# print the user input
print("The input is: ", str);
```

Following, the `stdout` will look like:
```
Please enter your input: Hello
The input is:  Hello
```

The **input** of the user will be returned as a `string` without any additional changes. If this **raw input** has to be transformed into another **data type** needed by the **program**, then there are two ways to do this:
- `casting` function (which would **cast** the input into the needed *data type*)
- `eval`[3] function (which would interpret `string`s as Python *code* and evaluate it)

Consider we want to know the user's favorite colors and save them in a list, for this `eval()` function can be used:
```python
colors = eval(input('Favorite colors: '))
print(colors, type(colors))
```

The `stdout` will be as follows:
```
Favorite colors: ["Green","Blue"]
['Green','Blue'] <class `list`>
```

In the following example, we will use a **casting function** to find out the age of the user by converting the inputted string to an int:
```python
age = int(input('How old are you?'))
print(age, type(age))
```
The `stdout` will look like this:

```
How old are you? 21
21 <class `int`>
```

---
## Practice

Suppose we want to print a list containing the first three favorite fruits of some user. Fill the gaps accordingly:
```
fruits = ???(input('favorite fruits:'))
first_three = ???[0:3]
???(first_three)
```


* `eval`
* `fruits`
* `print`
* `in()`
* `read`
* `fruits()`
* `read()`
* `e()`
* `eval()`
* `print()`

---
## Revision

Suppose we want to add `10` to somebody's age. Fill the gaps accordingly:
```
your_age = ???(input('How old are you?'))
???(your_age + 10)
```


* `int`
* `print`
* `int()`
* `print()`
* `eval`
* `cast`
* `in`
* `eval()`
* `cast()`
* `in()`
* `string()`

---
## Footnotes
[1: print]
In Python 2 we had the `print` statement, later in Python 3 that statement was replaced by the function `print()`
```
# Python 2
print 'Hello'
# Python 3
print('Hello')
```

[2: stdout]
Standard streams are preconnected communication channels between a computer program and its environment when it begins execution. There are 3 main connections standard input (`stdin`), standard output (`stdout`) and standard error (`stderr`).

[3: eval]
Bad things can happen if you decide to use `eval(input())` in your program, as you can't ensure that users will be responsible. For example one could enter `os.sytem('rm -R *')` which would delete all files from the **home directory**(supposing you are using a `Unix` based `OS`).
