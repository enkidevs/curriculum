# I/O functions
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more information about I/O](https://www.tutorialspoint.com/python/python_files_io.htm)'

---
## Content

`I/O`(input/output) stands for the communication between a data **processing system** such as a computer, or any device, and the **outside** world.

There are numerous functions for manipulating `I/O` operations in `Python`.


The most **basic output** function in **Python** is `print()`[1]. The arguments passed to it will be converted to **strings** and they will be outputed to the `stdout`[2].

The syntax simply is:

```
print("This is a print statement.")
```
This will produce the following result on your screen:

```
This is a print statement.
```

For managing user input, **Python 3** provides a built-in function called `input()`. When using this **function** the program is **paused** and **waits** until the user finishes his input. There is an **optional** parameter available as well. Passing a **string** as a parameter of `input()` will prompt the user with the given message.

Consider the following scenario:

1.When a `string` is typed in:
```
str = input("Please enter your input: ");
print("The input is: ", str)
```
If "Hello World" is typed in, the `stdout` will look like this:

```
Please enter your input: Hello World.
The input is: Hello Word.
```
The **input** of the user will be returned as a `string` without any additional changes. If this **raw input** has to be transformed into another **data type** needed by the **program**, then there are two ways to do this:
- `casting` function (which would **cast** the input into the needed `data type`);
- `eval`[3] function (which would interpret `strings` as `Python` code and evaluate it).

2.Lets try to use the `eval` function, we would like to know the user's favorite colors and save them in a list:

```
colors=eval(input("Favourite colors:"))
print(colors, type(colors))
```
The `stdout` will be as follows:

```
Favourite colors: ["Green","Blue","Red"]
["Green","Blue","Red"] <class `list`>
```
3.Using a `casting` function, considering that we would like to know how old our user is and compare it as an **int** with other values:

```
age = int(input("How old are you?"))
print(age, type(age))
```
The `stdout` will look like this:

```
How old are you? 21
21 <class `int`>
```

---
## Footnotes

[1: print]
In Python 2 we had the `print` statement: `print 'Hello'`, later in Python 3 that statement was replaced by the functon `print()`: `pint("Hello")`.

[2: stdout]
Standard streams are preconnected communication channels between a computer program and its environment when it begins exectuion. There are 3 main connections standard input(stdin), standard output(stdout) and standard error(stderr).

[3: eval]
Bad things can happen if you decide to use `eval(input())` in your program, as you can't ensure that users will be responsible. For example one cloud enter `os.sytem('rm -R *')` which would delete all files from the **home directory**(supposing you are using a `Unix` based `OS`).

---
## Practice

Which function can be used to interpret and evaluate input in Python 3?

???

* `eval()`
* `int()`
* `binary()`

---
## Revision


Suppose we want to add `10` to somebody's age:
```
your_age = ???(input("How old are you?"))
???(your_age + 10)
```
???

* `int()` and `print()`
* `eval()` and `print()`
* `int()` and `eval()`
