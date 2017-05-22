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

The simplest way to produce **output** is using the `print` statement, where you can pass **zero** or **more** expressions separated by commas. The function will convert the expression, that was passed, into a `string` and writes the result to standard **output** as follows:

```
print "This is a print statement in Python."
```
This will produce the following result on your screen:

```
This is a print statement in Python.
```

As far as reading **keyboard input** is regarded, **Python** provides two build-in functions: `input()` and `raw_input()`. There will be a whole insight focused on the differences between this two **functions**. However the behaviour of these functions are similar up to a certain point. They both read a line from standard **input** and returns it as a `string`.

```
str = input("Please enter your input: ");
print "The input is: ", str
```
If "Hello World" is typed in, its output is like this:

```
Please enter your input: Hello World.
The input is: Hello Word.
```

In order to be able to **write/read** to/from a file in **Python** an `open()` build-in function must be used. This function creates a `file` object, which would be utilised to call other support methods associated with it.

```
file object = open(file_name,[access_mode],[buffering])
```
Parameter details:

- file_name: string value that contains the name of the file.
- access_mode: it determines the mode in which the file has to be opened: `read`, `write`, `append`.
- buffering: if the value is 0, no buffering takes place. If the value is 1, **line buffering**[1] is performed while accessing the file. If the buffering value is greater then 1, then buffering action is performed with the indicated buffer size.

Here it is a list of the different modes of opening a file:

- `a` : Opens the file for appending. With the file pointer being at the end of the file.
- `r` : Opens the file for reading. With the file pointer being at the beginning of the file.
- `w` : Opens the file for writing. Overwrites the file if it exists. If the file doesn't exist it will create a new file.
- `a+`: Opens the file for both, reading and appending. The file pointer is at the end of the file.
- `r+`: Opens the file for both, reading and writing. The file pointer is place at the beginning of the file.
- `w+`: Opens the file for writing and reading as well. Overwrites the existing file. If it doesn't exist, creates a new file.
- `ab/rb/wb`: Opens the file for appending/reading/writing in binary format.

---
## Footnotes

[1: line buffering]
Characters written to a **line buffered stream** are transmitted to the file in blocks when a newline character is encountered.

---
## Practice

`file object = open("result.txt",[rb])` ?
???

* Opens the file result.txt and reads from it in binary.
* Opens the file result.txt and reads from it.
* Opens the file result.txt and reads and writes to it.
* Opens the file result.txt and reads and writes in binary.
---
## Revision


What is the keyword used to print to console in Python?
???

* `print`
* `System.out.println()`
* `cout`
* `print()`
* `fout()`
