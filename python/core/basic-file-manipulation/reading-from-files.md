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

  - '[More about reading from files](http://www.pythonforbeginners.com/files/reading-and-writing-files-in-python){website}'


---

# Reading from files

---
## Content

After opening a **file object**, we have three **operations** available in **Python** for reading files:
- `read()`
- `readline()`
- `readlines()`

Suppose we have a file named `test.txt` with the following text inside:
```
Hello!
My name is Steve.
Where is my food?
```
We can read the entire file with `read()`:

```python
file = open('test.txt', 'r')
print(file.read())

# Output:

# Hello!
# My name is Steve.
# Where is my food?
```

Instead of **reading** the whole **file** at once, you could read it one line at a time with the help of `readline()` file object method. A line is defined as all characters until the **end of line character** (`\n`):

```
file = open('test.txt', 'r')

print(file.readline())
# Oputput: Hello!

print(file.readline())
# Output: My name is Steve.
```

Last but not least, `readlines()` reads all lines from a file and returns them as a **list**:

```
file = open('test.txt', 'r')

print(file.readlines())
# Oputput: ['Hello!', 'My name is Steve.'
#                 , 'Where is my food?']
```

**Remember**, we used all operations available on the same **file** just for exemplification purposes. In reality if we use one of the **operations** on a file, then we cannot read from it again. If we use the `read()` **operation** on a file, then the `readlines()` **operation** applied to the same file will return an **empty string**.

However, there's a workaround to this - the `seek()` function which allows you to read the same file multiple times. More on this in the next insights!

---
## Practice

Suppose we have a file containing 5 lines. How do we read the first 2 of them?
```python
file = ???('my_file.txt', 'r')

print(file.???())
print(???.readline())
```


* `open`
* `readline`
* `file`
* `readlines`
* `read`
* `my_file.txt`
* `write`
* `seek`

---
## Revision

Suppose we want to read all lines from a file and return them as a string. Fill the gaps accordingly:
```
file = open('test.txt', '???')

print(file.???())
```


* `r`
* `readlines`
* `w`
* `a`
* `readline`
* `read`
* `open`
* `write`
