---
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
# Equality

---
## Content

JavaScript supports two types of comparison operator’s **loose** and **strict**. 

Strict equality as well as comparing values will check that the values are of the same type.

For example using loose equality (2 equal signs):
```
1==1 //true
```
But this is also true if we compare the string and numeric versions of 1:
```
1=="1" //true 
```
Loose equality checking can cause some weird hard to spot bugs so if we do not want JavaScript to convert types automatically when comparing we can use the *strict equality* operator (3 equal signs):
```
1==="1" //false
```
JavaScript also supports loose and strict not equal:
```
1!="1" //false
1!=="1" //true
```

---
## Practice

The following check will evaluate to:
```
42 !== "42"
// ???
```

* true
* false

---
## Revision

`===` is called ???

* strict equality
* loose equality
* triple equality
* not equal