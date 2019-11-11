---
author: Stefantudose

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

standards:

  javascript.functions.1: 10

  javascript.execution-context.1: 10

tags:

  - introduction

  - workout


links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/1986896/what-is-the-difference-between-call-and-apply){website}'


aspects:
  - obscura
  - deep
  - workout


---

# Difference between **.call** and **.apply** methods

---
## Content

The main difference between the two methods is the way they handle arguments.

For the `.apply` method, we have to pass in an array of arguments, but for the `.call` method we have to pass in the arguments one by one.

**Example**

```javascript
function.call(obj, 1, 2, 3);
function.apply(obj, [1, 2, 3]);
```

---
## Practice

The ??? method lets you invoke the method using an array as an argument whereas the ??? method require explicit parameters.


* `.apply`
* `.call`

---
## Revision

What must be used so explicit arguments are required?
```javascript
function.???(obj, 1, 2, 3);
```


* `call`
* `apply`

 
