# Renaming a File
author: nickdaminov

levels:

  - medium

type: normal

category: how to

links:

  - '[File Class Documentation](https://docs.oracle.com/javase/7/docs/api/java/io/File.html#renameTo(java.io.File))'
  - '[File Manipulations with Examples](https://www.tutorialspoint.com/java/io/java_io_file.htm)'

---
## Content

In this workout we will discuss some features that can be done with the files and directories using *Java* language. *File* class is part of the *java.io* library and has a lot of inbuilt functionality. More information on what cool features it has can be found in Oracle documentation, link is provided in the **footnotes**.

In order to rename a file we can use *java.io.File.renameTo()* function. This method returns a `boolean` value which indicates whether the renaming operation was successful or not, it also can throw *NullPointerException* or *SecurityException*.

*renameTo(File parameter)* takes in a new file path argument i.e. the destination where you want to copy the original file. This means that not only can we rename the file but can also move it to another directory.

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
