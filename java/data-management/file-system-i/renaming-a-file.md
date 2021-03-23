---
author: nickdaminov
type: normal
category: how-to
links:
  - >-
    [File Class
    Documentation](https://docs.oracle.com/javase/7/docs/api/java/io/File.html#renameTo(java.io.File)){website}
  - >-
    [File Manipulations with
    Examples](https://www.tutorialspoint.com/java/io/java_io_file.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Renaming a File


---

## Content

In this workout we will discuss some features that can be done with the files and directories using *Java* language. *File* class is part of the *java.io* library and has a lot of inbuilt functionality. More information on what cool features it has can be found in Oracle documentation.

In order to rename a file we can use `java.io.File.renameTo()` function. This method returns a `boolean` value which indicates whether the renaming operation was successful or not and it also can throw *NullPointerException* or *SecurityException*.

`renameTo(File parameter)` takes in a new file path argument i.e. the destination where you want to copy the original file. This means that not only can we rename the file but can also move it to another directory.

Example:

```java
import java.io.File;

public class Main {
  public static void main(String[] args) {
    //taking an existing file "gtaHacks.txt"
    File gameHacks =
    new File("C:/folder/hacks.txt");
    //creating a new file name and location
    File gtaHacks =
    new File("C:/gameFolder/gtaHacks.txt");

    try {
      //renaming a file path
      if(gameHacks.renameTo(gtaHacks)) {
        System.out.println("Success");
        } else {
          System.out.println("Error");
        }
    } catch(Exception e) {
    		e.printStackTrace();
    }
  }
}
```


---

## Practice

What does the `renameTo()` method take as a parameter?

???

What is the return value of the `renameTo()` method?

???

Why is it important to use try/catch block when working with files?

???

- It takes a new path of the future file
- It returns a boolean value depending on whether operation was successful
- There may not be a file that is specified by the path
- It takes a new name of a file as a string value
- renameTo() is a void function so it does not return anything


---

## Revision

Can the `File.renameTo()` method be used to move a file to another directory?

???

- Yes, it can move the file to any directory in the system
- Yes, but only if this directory is a part of src folder
- No, it can only rename the file
