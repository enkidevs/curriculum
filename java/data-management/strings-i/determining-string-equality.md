---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - strings


links:

  - '[www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=18){website}'


---

# Determining string equality

---
## Content

Using the `==` operator to compare strings actually checks the identity of the strings rather than comparing their content.

In order to check whether two strings have the same value, use the `.equals()` method instead.

Given two strings `string1` and `string2`:
```
//two identical strings
String string1 = "Enki";
String string2 = "Enki";
```
The following code will return `false` because the `==` operator is comparing whether the two strings occupy the same memory location; not their values.
```
if(string1 == string2){
  return true;
}
return false;

```
If we want to compare the values of the strings, we should use `.equals`. This code will return `true`:
```
if(string1.equals(string2)){
  return true
}
return false;
```

 
