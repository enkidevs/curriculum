---
author: fsites
levels:
  - basic
  - beginner
type: normal
category: feature
tags:
  - 'operators, assignment, loops'
notes: >-
  Seems trivial but they had me confused when I started looking at other peoples
  code.
links:
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Assignment_Operators){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Using assignment operators


---

## Content

Assignment operators are a great way to reassign a value while keeping your code clean.

Instead of `x = x + y`, use `x += y`.

Assignment operators are particularly useful in loops:

    var list = [1, 2, 3];
    var sumOfSquares = 0;
    for (i = 0; i < list.length; i++) { 
      sumOfSquares += Math.pow(list[i], 2);
    }

Other examples of assignment operators include `-=`, `*=`, `/=` and `%=`.


---

## Practice

Choose the right operator for each step to end up with x equal to 7:

```javascript
var x = 5;
x ??? 4; // make x == 20
x ??? 2; // then, make x == 10
x ??? 3; // lastly, make x == 7
```

- *=
- /=
- -=
- ++
- =>


---

## Revision

`x = x + y` can be shortened using ??? 

- x += y
- x ++ y
- x =+ y
 
