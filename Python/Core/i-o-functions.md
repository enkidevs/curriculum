# I/O functions.
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://www.tutorialspoint.com/python/python_files_io.htm)'

---
## Content

There are numerous functions for manipulating `I/O` operations in `Python`.

The simplest way to produce **output**, in `Python v3.x`, is using the `print()` function where you can pass keyword **arguments**. **Arguments** are meant to replace most of the old **syntax** used in the older `print` statement. The **function** converts the expression that was passed into a `string` and writes the result to standard **output** as follows:

```
print("This is a print statement.")
```
This will produce the following result on your screen:

```
This is a print statement.
```

As far as **keyboard input** is regarded, **Python v3.x** provides a build-in function called `input()`. This function has an optional **parameter**, which is a prompt `string`[1].  If the `input()` function is called, the program will stop and wait until the user has ended his input typing in the **return key**[2].
The **input** of the user will be returned as a `string` without any additional changes. If this **raw input** has to be transformed into another **data type** needed by the **program**, than there are two ways to do this: using a `casting` function(which would **cast** the input into the needed `data type`) or the `eval`[3] function(which would interpret `strings` as `Python` code and evaluate it).

1.When a `string` is typed in:
```
str = input("Please enter your input: ");
print "The input is: ", str
```
If "Hello World" is typed in, the output will look like this:

```
Please enter your input: Hello World.
The input is: Hello Word.
```
2.Lets try to use the `eval` function:

```
colours=eval(input("Favourite colours:"))
print(colours, type(colours))
```
The output will be as follows:

```
Favourite colours: ["Green","Blue","Red"]
["Green","Blue","Red"] <class `list`>
```
3.Using a `casting` function:

```
age = int(input("How old are you?"))
print(age, type(age))
```
The output will look like this:

```
How old are you? 21
21 <class `int`>
```

---
## Footnotes
[1: prompt string]
A message that will be printed in console when the program asks for input.

[2: return key]
"Enter".

[3: eval()]
`eval()` function interprets a string as `Python` code. However, this function could cause problems when the `string`s are interpreted. If you are using `eval(input())` and imported `OS` some user could type in `os.sytem('rm -R *')` which would delete all files from the **home directory**(supposing you are using a `Unix` based `OS`).
---
## Practice

Which function is used to evaluate input `string`s?
???

* `eval()`
* `int()`
* `binary()`

---
## Revision


What is the function used to print to console in Python?
???

* `print()`
* `print`
* `System.out.println()`
* `cout`
* `fout()`
