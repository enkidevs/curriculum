# How to open a file object.
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://www.tutorialspoint.com/python3/python_files_io.htm)'

---
## Content

In order to be able to **write/read** to/from a file in **Python**, an `open()` build-in function must be used. This function creates a `file` object, which would be utilised to call other support **methods** associated with it.

```
file object = open(file_name,[access_mode],[buffering])
```
Parameter details:

- `file_name`: string value that contains the name of the file.
- `access_mode`: it determines the mode in which the file has to be opened: `read`, `write`, `append`.
- `buffering`: if the value is 0, no buffering takes place. If the value is 1, **line buffering**[1] is performed while accessing the file. If the buffering value is greater then one, then buffering action is performed with the indicated buffer size.

Here it is a list of the different **modes** of opening a **file**:

- `a` : Opens the file for `appending`. With the **file pointer** being at the end of the file.
- `r` : Opens the file for `reading`. With the **file pointer** being at the beginning of the file.
- `w` : Opens the file for `writing`. Overwrites the file if it exists. If the file doesn't exist it will create a new file.
- `a+`: Opens the file for both, `reading` and `appending`. The **file pointer** is at the end of the file.
- `r+`: Opens the file for both, `reading` and `writing`. The **file pointer** is place at the beginning of the file.
- `w+`: Opens the file for writing and reading as well. Overwrites the existing file. If it doesn't exist, creates a new file.
- `ab/rb/wb`: Opens the file for `appending`/`reading`/`writing` in **binary format**.

Here is a list of **attributes** related to the `file object`:
- `file.closed`: returns `true` if the **file** is closed and `false` otherwise.
- `file.mode`: returns which **mode** the file was opened in.
- `file.name`: returns the name of the **file**.

```
# Open file.txt and print the file name

obj = open("doc.txt","wr")
print("The file name is: ", obj.mode)
```
```

# The output will look like this:

The file name is: doc.txt
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

* at the begining of the file
* at the end of the file
* in the middle of the file
