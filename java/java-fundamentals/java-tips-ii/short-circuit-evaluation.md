---
author: pawel
type: normal
category: must-know
links:
  - '[On && and || in Javascript](http://www.grauw.nl/blog/entry/510){website}'
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Short-Circuit Evaluation


---

## Content

Short-circuit evaluation is the way programming languages evaluate some boolean operations, where the second argument is evaluated only if the first argument is not sufficient to determine the outcome of the expression.

In the example below function `calc(b)` is never evaluated. It might help prevent expensive calculations and run-time errors.

```java
boolean check = false;
if (check != false && calc(b)) {
       evaluate();
}
```


---

## Revision

Which of the following does short-circuiting not prevent? 

???

- Exceptions being thrown
- Expensive calculations
- Run-time errors
