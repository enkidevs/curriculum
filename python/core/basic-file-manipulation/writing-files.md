---
author: SebaRaba

levels:

  - beginner

type: normal

category: how to
aspects:
  - introduction
standards:
  python.standard-library-operating-system.0: 10

links:

  - '[More about writing to files](https://www.digitalocean.com/community/tutorials/how-to-handle-plain-text-files-in-python-3){website}'


---

# Writing to files

---
## Content

**Remember** how `open()` works:
- if we open an already existing file in mode `w` (writing), it will be overwritten
- if the file doesn't exist, it will be created

Let's start by creating a **file** at the given **path**. Note that we use mode `w+` to open the file as later we'll need to **read** some lines from it:
```
path = '/usr/seba/new_file.txt'
text = open(path, 'w+')
```

Writing to the **file** can easily be done via the `write()` function. A single **string** may be passed as as **argument**, which will be written to the **file**. You can **split** the **string** into multiple lines by adding `\n` character where necessary.

```
in = 'This is one line\n
      This is the second one.'
text.write(in)
text.seek(0)
print(text.read())

# Output:
# This is one line
# This is the second one.
```

We used `seek()` function within this example. This function moves the **file pointer** to the specified position. In our case, we moved it to the **beginning** (position 0) of the file to be able to **read** from it after.

Remember that all **files** must be **closed** to preserve **resources** after finishing working with them. To do this, simply `close()` the file object:

```
text.close()
```

---
## Practice

What will the output look like?
```
file = open('name.txt', 'w+')

file.write("John")
file.write("Chris")

print(file.readline())

file.close()
```
???


* Nothing will be generated
* JohnChris
* Chris
* John

---
## Revision

Suppose we want to read the content of a file and copy it into another. Fill the gaps:
```
file = open('name.txt', '???')
file.write("John")
file.write("Chris")
file.seek(???)

new_file = open("new.txt", "w+")
new_file.???(file.read())

file.close()
new_file.close()
```


* `w+`
* `0`
* `write`
* `read`
* `seek`
* `a`
* `r`
* `1`
