# How to open a file object.
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more about open() function](https://www.tutorialspoint.com/python3/python_files_io.htm)'

---
## Content

**Reading** from and **writing** to files in **Pyton 3** can easily be done using the `open()` funciton. This will create a `file` object, which would be utilised to call other support **methods** associated with it.

Consider the following syntax:

```
obj=open(f_name,[access_mode],
                  [buffering])
```

Parameter details:

- `file_name`: string value that contains the name of the file.
- `access_mode`: it determines the mode in which the file has to be opened: `read`, `write`, `append`.
- `buffering`: there are 2 important values `0`(means no buffering) or `1`(means line buffering [1] is performed). If the value is grater than `1` then that will be considered the buffer's size.

The supported modes for opening a file are:

- `a` : Opens the file for `appending`. With the **file pointer** being at the end of the file.
- `r` : Opens the file for `reading`. With the **file pointer** being at the beginning of the file.
- `w` : Opens the file for `writing`. Overwrites the file if it exists. If the file doesn't exist it will create a new file.
- `a+`: Opens the file for both `reading` and `appending`. The **file pointer** is at the end of the file.
- `r+`: Opens the file for both `reading` and `writing`. The **file pointer** is place at the beginning of the file.
- `w+`: Opens the file for writing and reading as well. Overwrites the existing file. If it doesn't exist, creates a new file.
- `ab/rb/wb`: Opens the file for `appending`/`reading`/`writing` in **binary format**.

Note that every `file` *object* has the following attributes:

- `file.closed`: returns `true` if the **file** is closed and `false` otherwise.
- `file.mode`: returns which **mode** the file was opened in.
- `file.name`: returns the name of the **file**.

Keeping these in mind, consider the following scenarios:

```
# Open file.txt and print file name

obj = open("doc.txt","wr")
print("The file name is: ", obj.name)

#Output: The file name is: doc.txt

print("The file mode is: ", obj.mode)

#Output: The file mode is: wr
```

---
## Footnotes

[1:line buffering]
Characters written to a **line buffered stream** are transmitted to the **file** in blocks when a **new line** character is encountered.

---
## Practice

What happens when the **buffering** value is set to `0`?
???

* there is no buffering done
* line buffering is done
* default buffering is done

---
## Revision

Where is the **file pointer** when the file is opened in `r+` mode?
???

* at the begining of the file
* at the end of the file
* in the middle of the file
