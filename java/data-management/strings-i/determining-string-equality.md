---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

aspects:

  - introduction

tags:

  - strings

links:

  - '[www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=18){website}'
  - '[www.stackoverflow.com](https://stackoverflow.com/a/3801355/8030012){website}'

---

# Determining string equality

---

## Content

Using the `==` operator to compare strings actually checks the identity of the strings rather than comparing their content.

In order to check whether two strings have the same value, use the `.equals()` method instead.

Given two strings `string1` and `string2`:

```java
//two identical strings
String string1 = new String("Enki");
String string2 = new String("Enki");
```

The following code will return `false` because the `==` operator is comparing whether the two strings occupy the same memory location; not their values.

```java
if(string1 == string2){
  return true;
}
return false;
```

**NOTE:** If we do not use the keyword `new`, then the previous code returns `true`, this is because the variable `string2` points to the same reference as the variable `string1` (`"Enki"` is already in the String pool).

If we want to compare the values of the strings, we should use `.equals`. This code will return `true`:

```java
if(string1.equals(string2)){
  return true
}
return false;
```
