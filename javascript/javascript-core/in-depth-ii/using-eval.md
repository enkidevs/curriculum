---
author: rosielowther
type: normal
category: best-practice
links:
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/eval){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using `eval`


---

## Content

`eval` evaluates the string passed to it as Javascript code:

```js
let str = "if(a){1+2;} else{1+3;}";
let a = true;
let b = eval(str);  // returns 3
```

The general practice is to avoid using `eval` if there is an alternative. Code usually runs slower if `eval` is used because it has to disable optimisations. 

The security of `eval` is poor. The string can be changed by a third party extension to produce malicious code.

Third party code can access the scope in which `eval()` was called and this can also lead to attacks.

This is why `eval` is sometimes refered to as "evil".


---

## Practice

What does the following JS code return when ran? ???

```javascript
let str = "if(flag){2*8;} else{-2*8;}";
let flag = false;
let b = eval(str);
```

- `-16`
- `16`
- `undefined`
- `NaN`


---

## Revision

Executing javascript code passed in as a string is done with the function ???

- `eval()`
- `evil()`
- `evaluate()`
- `(string).toJS()`
 
