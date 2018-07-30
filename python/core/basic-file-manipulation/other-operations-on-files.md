---
author: SebaRaba

levels:

  - beginner

type: normal

category: feature
aspects:
  - introduction
standards:
  python.standard-library-operating-system.0: 10

links:

  - '[More operations here](https://www.tutorialspoint.com/python/python_files_io.htm){website}'


---

# Other operations on files

---
## Content

**Python** provides more methods to ease `I/O` interactions and **file handling**. Among these we can count:
- `tell()` which returns the current position in the file
- `seek(offset, from_what)` which moves the **file pointer** within the file
- `rename(old_name, new_name)` which enables users to rename files
- `remove(path)` which enables users to remove files


In **Python**, the `tell()` function returns the current position in the **file**. This **position** is represented by the number of **bytes** after the beginning of the file.

`seek(offset, from_what)` enables the **users** to move the page pointer along the **file**. This operation requires two parameters, `offset` which defines how many **bytes** you will move the pointer and `from_what`, which is optional and states where you want to start moving from. There are 3 important **values** for `from_what` parameter:

- `0`(default): which means at the beginning;
- `1`: which means at the current position;
- `2`: which means at the end of the file.

Let's see how `tell()` and `seek()` work in practice, considering a dummy `file.txt`[1]:
```python

file = open('file.txt','r+')
text = file.read(7);

print('Input is: ', text)
print('Current pos: ', file.tell());

file.seek(0);

print('After seek:', file.tell());
print(file.read())

file.close()

# Output:
# Input is:
# Current pos: 7
# After seek: 0
# This is my file
# It has two lines of text
```

Apart from other uses, `os` module helps with **file processing operations**. Two of this operations are
`rename(current_file_name, new_file_name)` and `remove(file_name)`.

As `os` is a **module**, we need to **import** it to be able to use the operations it provides:

```python
import os

os.rename('file.txt','new_file.txt');
os.remove('new_file.txt');
```

---
## Practice

We want to open `file.txt` just for reading purposes. After we want to print it line by line and print the content.
```
file = open('file.txt','???')
print(???.readline())
```


* `r`
* `file`
* `seek`
* `tell`
* `write`
* `read`
* `w`
* `rename`
* `remove`

---
## Revision

Which method returns the current position of the file pointer within a **file object**?

???


* `tell()`
* `seek()`
* `open()`
* `readline()`
