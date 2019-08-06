---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  javascript.control-flow.0: 10
  javascript.control-flow.1: 10

tags:

  - introduction

aspects:
  - introduction


---

# If Statement

---
## Content

Like most programming languages JavaScript has a number of flow control statements including the standard *if*, *if else* and *switch* statements.

```
var isNewCustomer=true;

if(isNewCustomer===true){
   ...
}

if(invalidLogins > 3){
   ...
}

```
**If else**

We can test multiple conditions using if else. The first expression that is found to be true will be executed and if none of them are true then the else condition (if it exists):

```
if(isNewCustomer){
 ..
}
else if (isVipCustomer){
...
}
else {
...
}
```

**Switch Statements**

Code can be more readable using the switch statement if there are many cases for a single value.

```
switch (customerType){
   case "normal" :
         ...
         break;
   case "vip":
         ...
         break;
   default:
         ...
}
```

---
## Practice

Complete the basic syntax of the following `switch` statement:
```
??? (checker) {
   ??? "1" :
        ...
        break;
   case "2" :
        ...
        break;
   ???:
        ...
}

```


* `switch`
* `case`
* `default`
* `break`
* `if`
* `else`
* `if else`

---
## Revision

How would you write an `if/else` statement?
```
if (condition <= 0) {
  ...
} ??? ??? (condition > 0) {
  ...
}

```

* `else`
* `if`
* `case`
* `break`
* `if else`
* `else if`
* `switch`
* `case`
* `==`
 
