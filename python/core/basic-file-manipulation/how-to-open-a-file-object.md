---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: how to


links:

  - '[More about open() function](https://www.tutorialspoint.com/python3/python_files_io.htm){website}'


---

# How to open a file object

---
## Content

**Reading** from and **writing** to files in **Python 3** can easily be done using the `open()` function. This will create a `file` object, which can be used to call other support **methods** associated with it.

Consider the following syntax:

```
obj = open(file_name, [access_mode],
                      [buffering])
```

Here's the disambiguation of its arguments:
- `file_name`: string value that contains the name of the file
- `access_mode`: it determines the mode in which the file has to be opened: `read`, `write`, `append`
- `buffering`: there are two important values `0` (means no buffering) or `1` (means line buffering[1] is performed). If the value is greater than `1` then that will be considered the buffer's size

The supported modes for opening a file are:

- `a`: Opens the file for `appending`. With the **file pointer**[2] being at the end of the file
- `r`: Opens the file for `reading`. With the **file pointer** being at the beginning of the file
- `w`: Opens the file for `writing`. Overwrites the file if it exists. If the file doesn't exist it will create a new file
- `a+`: Opens the file for both `reading` and `appending`. The **file pointer** is at the end of the file
- `r+`: Opens the file for both `reading` and `writing`. The **file pointer** is place at the beginning of the file
- `w+`: Opens the file for writing and reading as well. Overwrites the existing file. If it doesn't exist, creates a new file
- `ab/rb/wb`: Opens the file for `appending`/`reading`/`writing` in **binary format**

Note that every `file` *object* has the following attributes:

- `file.closed`: returns `true` if the **file** is closed and `false` otherwise
- `file.mode`: returns which **mode** the file was opened in
- `file.name`: returns the name of the **file**

Consider the following example:
```
# Open file.txt and print file name

obj = open("doc.txt","w")
print("The file name is: ", obj.name)
# Output: The file name is: doc.txt

print("The file mode is: ", obj.mode)
# Output: The file mode is: w
# this means write
```

---
## Practice

Suppose we want to append something to a file and print its content. Fill the gaps accordingly:
```py
file = open('practice.py', '???')
file.write('Append this')
file.???(0)
print(file.???())
```


* `a+`
* `seek`
* `read`
* `a`
* `write`
* `append`
* `w`

---
## Revision

Suppose we want to open a file and write something to it. Fill the gaps accordingly:
```py
file = open('practice.txt', '???')
file.???('this is my new file')
```


* `w`
* `write`
* `r`
* `read`

---
## Footnotes
[1:line buffering]
Characters written to a **line buffered stream** are transmitted to the **file** in blocks when a **new line** character is encountered.

[2:file pointer]
Imagine file pointer as a computer cursor that states on which line you are in the current file.
