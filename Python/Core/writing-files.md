# Writing-files
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about writing to files](https://www.digitalocean.com/community/tutorials/how-to-handle-plain-text-files-in-python-3)'

---
## Content

**Remember** how `open()` works:
- if we open an already existing file with mode `w` it will be overwritten.
- if the file doesn't exist, it will be created.

Let's start by creating a **file** at the given **path**. Note that we use mode `wr` to open the file as later we'll need to **print** some lines of it:

```
path = /usr/steve/new_file.txt
text = open(path, 'wr')
```


Writing to the **file** can easily be done via the `write()` function. A single **string** may be passed as as **argument**, which will be written to the **file**. Multiple lines can be represented by `\n` characters within the string:

```
in = 'This is one line\n
      This is the second one.'
text.write(in)
text.seek(0)
print(text.read())

#Output:
#This is one line
#This is the second one.
```
We used `seek()` function within this example. This function moves the **page pointer** to the specified position. In our case, we moved it to the beginning of the **file** to be able to **read** from it after.

Remember all **files** must be **closed** to preserve **resources** after finishing working with them. To do this, simply `close()` the file object:

```
text.close()
```
---
## Practice

What happens if we `open()` an existing file in `w/wr` modes and write to it?
???

* It overwrites the file.
* It appends the new text to the existing one.
* Nothing, you can't write to existing files.

---
## Revision

How many parameters does the `write()` operation require?
???

* `1`
* `2`
* `4`
