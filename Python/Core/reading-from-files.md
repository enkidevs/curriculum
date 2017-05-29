# Reading from files
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[link to learn more](http://www.pythonforbeginners.com/files/reading-and-writing-files-in-python)'

---
## Content

There are three **operations** available in **Pythong** for reading files.
Supposing we have a file named `test.txt` with the following text inside:
```
Hello!
My name is Steve.
Where is my food?
```
Using `read()` operation:
```
file = open('test.txt', 'r')
print(file.read())

#Oputput:
Hello!
My name is Steve.
Where is my food?
```
Using `readline()` operation, the code **returns** the whole next line, including the **end of line character**(`\n`). Because of this, if the **operation** is applied again on the same **file**, the line that was just **read** will be skiped.

```
file = open('test.txt', 'r')
print(file.readline())

#Oputput:
Hello!

```
The last **operation** provided is `readlines()`. It reads all lines from a file and **returns** a list, where each position is a **new line**.

```
file = open('test.txt', 'r')
print(file.readlines())

#Oputput:
['Hello!',
 'My name is Steve.',
 'Where is my food?']
```

**Remember**, we used all operations available on the same **file** just to be easier to exemplify. In reality if we use one of the **operations** on a file, then we cannot read from it again. If we use the `read()` **operation** on a file, than the `readlines()` **operation** applied to the same file will return an **empty string**.

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
