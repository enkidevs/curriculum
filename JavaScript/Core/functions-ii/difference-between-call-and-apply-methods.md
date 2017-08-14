# Difference between **.call** and **.apply** methods
author: Stefantudose

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/1986896/what-is-the-difference-between-call-and-apply){website}

---
## Content

The main difference between the two methods is the way they handle arguments.

`.call` method requires explicit parameters while `.apply` lets you invoke the method using an array as argument.

**Example**

```c++
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

*`call`
*`apply`