# Method Shorthand
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Method_definitions){website}

---
## Content

ES6 method shorthand allows us remove the function key word and colon making code more succinct. 

For example prior to ES6 you would have written something similar to the below:

```
return {
   func: function func() {
   ...
   }
};
```

With ES6 this can now become:

```
return {
    func() {
    ...
    }
};
```
