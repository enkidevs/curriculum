# Other operations on files
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more operations here](https://www.tutorialspoint.com/python/python_files_io.htm)'

---
## Content

**Python** provides more methods to ease `I/O` interactions and **file handling**. Among these we can count:
- `tell()` which returns the current postion;
- `seek()` which lets you navigate through the file;
- `rename()` which enables users to rename files;
- `remove()` which enables users to remove files;


In **Python** the `tell()` funciton returns the current position in the **file**. This **position** is represented by the number of **bytes** after the beginning of the file.

`seek(offset, from_what)` enables the **users** to move the page pointer along the **file**. This operation requires two parameters, `offset` which defines how many **byte** you will move the pointer and `from_what` which defines where you start moving from. Otherwise there are 3 other important **values**:

- `0`(default): which means at the beginning;
- `1`: which means at the current position;
- `2`: which means at the end of the file.

For a better understanding we will exemplify `tell()` and `seek()` operations with the following **snippet**:

```
text = open("file.txt","r+")
input = text.read(7);
print("Input is: ", input)

position = text.tell();
print("The current position: ", position);

position = text.seek(0);
print("Position after seek: ", position);

text.close()

#Output:
#The current position: 7
#Position after seek: 0
```
Apart from other uses, `os` module helps with **file processing operations**. Two of this operations are
`rename(current_file_name, new_file_name)` and `remove(file_name)`.

As `os` is a **module**, we need to **import** it to be able to use the operations it provides:

```
import os

os.rename("file.txt","new_file.txt");
os.remove("new_file.txt");

#file.txt was renamed into new_file.txt
#new_file.txt was then removed from disk
```
---
## Practice

Value `0` set to `from_what` parameter of `seek()` function, moves the pointer to?
???

* The `beginning` of the file.
* The `end` of the file.
* The `current` positon in the file.

---
## Revision

What function tells where the pointer is now?
???

* `tell()`
* `seek()`
* `open()`
* `readline()`
