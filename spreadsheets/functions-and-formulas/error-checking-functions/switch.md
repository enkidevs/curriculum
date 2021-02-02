---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[SWITCH](https://support.google.com/docs/answer/7013690){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# SWITCH


---

## Content

The `=SWITCH()` function is used to check if an expression corresponds to a list of cases and returns the value for the case it corresponds with.

The syntax is:

```plain-text
=SWITCH(
  expression, 
  case1, 
  value1, 
  case2, 
  value2, 
  ..., 
  default
)
```

Each case in the list has a value that the expression is checked against.

If it reaches a case it corresponds with, the value for that case is returned and the `SWITCH()` is finished.

If there is no value, the `default` value will be returned.

The `expression`, `case1` and `value1` are required. For each case, you must have a corresponding value.

`case2` and `value2` are optional. You can have as many cases and values as you want. 

The `default` value is also optional. It is recommended to include it because if the expression doesn't match any case, the default value will be used.

When using `SWITCH()`, the function will return a result in a new cell for each value in the expression.

If your expression has 50 cells, the switch will return 50 results. 

![switch](https://img.enkipro.com/e362778a4875d151ccf2782f5fdcee38.png)


---

## Practice

In which order do you write the `value`, `case`, `default` case, and `expression` in the `SWITCH()` functions?

```plain-text
SWITCH(
  ???, 
  ???, 
  ???, 
  ???
)
```

- expression
- case
- value 
- default
