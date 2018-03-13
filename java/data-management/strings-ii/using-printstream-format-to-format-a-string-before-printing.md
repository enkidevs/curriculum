---
author: adamMontgomerie

levels:

  - basic

type: normal

category: how to

tags:

  - strings

  - formatting


links:

  - '[docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/data/numberformat.html){website}'


---

# Using `Printstream.format` to format a string before printing

---
## Content

```
int i = 500;
float f = 2.36;
String s = "Java";
//System.out is Prtinstream object
System.out.format(
  "Today, I wrote %d lines
  of %s code in %f hours",
  i, s, f  
);
```
In the example above, `System.out.format` takes four arguments. The first argument specifies the format in which the string will be printed, the following arguments are variables which will be printed in the string.

The position in the string which a variable will be printed at is marked by a format specifier. For example, in the previous example `%d`, `%s` and `%f` are format specifiers. 

The letter following `%` indicates the type of variable which is being displayed; `d` is for decimal integers, `s` for strings and `f` for floats.

---
## Practice

Complete the code snippet, printing the `int` decimal provided:
```
int x = 5;
System.out.???("The value"+
  "of x is: ??? ", ???);
    
```

* `format` 
* `%d` 
* `x` 
* `print` 
* `%i` 
* `%x` 
* `printFormat`

---
## Revision

Using `System.out.format` , what specifier is used to print `float` s?

???


* `%f` 
* `%d` 
* `%float` 
* `%decimal` 
* `%s`

