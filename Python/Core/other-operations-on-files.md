# Other operations on files
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[link to learn more](https://www.tutorialspoint.com/python/python_files_io.htm)'

---
## Content

In **Python** there is a method called `tell()`, which returns the current position in the **file**. This **position** is represented by the number of **bytes** after the beginning of the file.

`seek(offset, from_what)` enables the **users** to move the page pointer along the **file**. This operation requires two parameters, `offset` which defines how many **byte** you will move the pointer and `from_what` which defines where you start moving from. If `from_what` is omitted, it is set by **default** to `0`. Otherwise there are 3 other important **values**:

- `0`: which means at the beginning;
- `1`: which means at the current position;
- `2`: which means at the end of the file.


```
text = open("file.txt","r+")
input = text.read(7);
print("Input is: ", input)

position = text.tell();
print("The current position: ", position);

position = text.seek(0);
print("Position after seek: ", position);

text.close()
#Output

The current position: 7
Position after seek: 0
```
There is a module in **Python** called `os`, which helps with file processing operations.There are two function we will talk about: `rename(current_file_name, new_file_name)` and `remove(file_name)`.

```
#As os is a module we need to import it
import os

os.rename("file.txt","new_file.txt");
os.remove("new_file.txt");
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
