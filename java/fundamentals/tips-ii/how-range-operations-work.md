---
author: catalin

levels:

  - basic

type: normal

category: must-know

aspects:

  - introduction

notes: 'https://insights.enki.com/#/contrib/others/55c83ba83f06ab320051aa8a?search=kha'

---

# How range operations work

---
## Content

When specifying a range of values, the first value `from` is included while the last value `to` is excluded.

```java
String.substring(from,to); 
```
For example when applying the method listed above on the following string 
```java
"Enki".substring(0,2);
```
the result will be `"En"`, as indexing begins from the `0` value. `"E"` was included ( `0` index) while `"k"` was excluded ( `2` index).

There are many more methods needing specifying a range, all of them using this rule.

```java
List.sublist(from,to);
```

```java
Array.copyOfRange(T[],from,to);
```

---
## Practice

What would be the return value of the following method:
```java
"beautiful".substring(4, 6);
// ???
```

* `ti` 
* `ut` 
* `if` 
* `be` 
* `ul`

---
## Revision

When calling the following function:
```java
"test".substring(1,3)
```
The output will ??? the character with index 3.

* `exclude` 
* `include`
