---
author: adamMontgomerie

levels:

  - basic

type: normal

category: tip

tags:

  - strings


links:

  - '[docs.oracle.com](http://docs.oracle.com/javase/7/docs/api/java/util/Formatter.html){website}'

notes: 'Gamified insight. Static Workout. '

---

# Altering format string output by changing a format specifier's `argument_index`

---
## Content

A format string is a string which can include one or more format specifiers. 
```
String hungry = "hungry";
String hippo = "hippo";
String s = String.format(
  "%s %s",
  hungry, 
  hippo);
```
Here, `"%s %s"` is a format string, and `%s` is a format specifier. The value of `s` is `"hungry hippo"`.

Modify the order that the arguments appear in the format string by specifying an argument index in the format specifiers.

Argument indexes take the form of a non-negative integer followed by `$`, where the integer specifies the position of the argument in the argument list. 
```
String s = String.format(
  "%2$s %1$s",
  hungry, 
  hippo);
```
The output of the example above will be `"hippo hungry"` because we have specified that argument 2 (`%2$s`) will come before argument 1 (`%1$s`).

---
## Revision

What is the value of `s` ?
```
s = String.Format("%2$s %3$s %1$s",
                   "a","b","c");
// s = ???
```

* `bca` 
* `abc` 
* `aaa` 
* `cab` 
* `bac`

 
