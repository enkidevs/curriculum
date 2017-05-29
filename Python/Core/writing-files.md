# Writing-files
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[link to learn more](https://www.digitalocean.com/community/tutorials/how-to-handle-plain-text-files-in-python-3)'

---
## Content

First, the **step** we need to remember is how `open()` works. If the file we apply `open()` to already exists, setting **mode** to `w` than the **file** will be overwritten. If the file doesn't **exist** though, a new file with the specified name will be **created**.

Now, we will define a **path** and create a new **file** there. The **file** will be opened in `wr` mode to be able to **print** the content later.
```
path = /usr/steve/new_file.txt
text = open(path, 'wr')
```
Next we want to put some data into this **file**. For this we will use `write()` operation, which takes a single **parameter** that must be a **string**. It takes that **string** and writes it to the file. If we want to add a **new line** to the file, the **newline character**('\n') must be provided as a **parameter**.

```
in = 'This is one line\n
      This is the second one.'
text.write(in)
text.seek(0)[1]
print(text.read())

#Output
This is one line
This is the second one.
```

After all **operations** are done we need to remember that all **files** must be **closed**. `.close()` operation finished the connection between the **file** on disk and the file **variable**.

```
text.close()
```
## Footnotes

[1:.seek()]
This operation moves the **page pointer** to the specified position. In our case, we moved it to the beginning of the **file** to be able to **read** from it after.
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
