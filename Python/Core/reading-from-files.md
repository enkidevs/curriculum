# Reading from files
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about reading from files](http://www.pythonforbeginners.com/files/reading-and-writing-files-in-python)'

---
## Content

There are three **operations** available in **Pythong** for reading files:
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

```
file = open('test.txt', 'r')
print(file.read())

#Oputput:
#Hello!
#My name is Steve.
#Where is my food?
```
Using `readline()` operation, the code **returns** the whole next line, including the **end of line character**(`\n`). Because of this, if the **operation** is applied again on the same **file**, the line that was just **read** will be skiped.

```
file = open('test.txt', 'r')
print(file.readline())

#Oputput: Hello!

print(file.redline())

#Output: My name is Steve.

```
Last but not least, `readlines()` reads all files from a file and returns them as a **list**:

```
file = open('test.txt', 'r')
print(file.readlines())

#Oputput: ['Hello!', 'My name is Steve.'
#                 , 'Where is my food?']
```

**Remember**, we used all operations available on the same **file** just to be easier to exemplify. In reality if we use one of the **operations** on a file, then we cannot read from it again. If we use the `read()` **operation** on a file, than the `readlines()` **operation** applied to the same file will return an **empty string**. There is a function called `seek()` that helps you read twice the same file. We will discuss more about that in the following insights.

---
## Practice

What does the `readline()` operation return?
???

* The next line containing `eol` character.
* The next line without the `eol` character.
* The whole content of the file.
* A list containing each line of the file.

---
## Revision

What happens when you apply the `read()` and `readlines()` operations on the same file, without writing to it?
???

* The second operaiton will return an empty string.
* Both operations will return the whole content of the file.
* None of the will work.
