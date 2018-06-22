---
author: pawel

levels:

  - basic

type: normal

category: must-know


links:

  - '[www.grauw.nl](http://www.grauw.nl/blog/entry/510){website}'

notes: ''

---

# Short-circuit evaluation

---
## Content

Short-circuit evaluation is the way programming languages evaluate some boolean operations, where second argument is evaluated only if first argument is not sufficient to determine the outcome of the expression.

In the example below function `calc(b)` is never evaluated. It might help prevent expensive calculations and run-time errors.

```
boolean check = false;
if (check != false && calc(b)) {
       evaluate();
}

```

---
## Revision

Which of the following does short-circulation not prevent? 

???


* Exceptions being thrown
* Expensive calculations
* Run-time errors

 
