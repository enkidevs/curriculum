---
author: adamMontgomerie
type: normal
category: tip
tags:
  - strings
links:
  - >-
    [Class
    Formatter](http://docs.oracle.com/javase/7/docs/api/java/util/Formatter.html){website}
notes: 'Gamified insight. Static Workout. '
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Altering format string output by changing a format specifier's `argument_index`


---

## Content

A format string is a string which can include one or more format specifiers.

```java
String hungry = "hungry";
String hippo = "hippo";
String result = String.format(
  "%s %s",
  hungry,
  hippo);
```

Here, `"%s %s"` is a format string, and `%s` is a format specifier. The `%s` specifier will be replaced with the first string given as an argument.

In this example, `result` will be formatted to `"hungry hippo"`.

To modify the order that the arguments appear in the format string, specify an argument index in the format specifiers.

Argument indexes take the form of a non-negative integer followed by `$`, where the integer specifies the position of the argument in the argument list.

```java
String hungry = "hungry";
String hippo = "hippo";
String result = String.format(
  "%2$s %1$s",
  hungry, 
  hippo);
```

Here, `%2$s` will be replaced with **the second** string argument, and `%1$s` will be replaced with **the first** string argument. So, in this example, `%2$s` will be the `hippo` string, and `%1$s` will be the `hungry` string. The output of the method will be `"hippo hungry"`.


---

## Revision

What will be the value of `result`?

```java
result = String.format(
  "%2$s %3$s %1$s",
  "a",
  "b",
  "c"
);

// result = ???
```

- `bca`
- `abc`
- `aaa`
- `cab`
- `bac`
