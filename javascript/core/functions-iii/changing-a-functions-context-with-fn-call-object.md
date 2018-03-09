# Changing a functions context with `fn.call(object)`
author: tommarshall

levels:

  - basic

  - medium

type: normal

category: must-know

standards:
  js.functions.1: 10
  js.execution-context.1: 10

links:

  - >-
    [javascriptissexy.com](http://javascriptissexy.com/javascript-apply-call-and-bind-methods-are-essential-for-javascript-professionals/){website}

  - >-
    [Mozilla Developer
    Network](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/call){website}

---
## Content

`fn.call()` allows you to call a function and provide an alternative value for the functions *this* context.

The first argument `fn.call()` accepts is the alternative *this* context and any following arguments are passed as parameters.

The code below defines a *discount* of *10* that will be retrieved within *getDiscount* via a call to `this.discount`:

```JavaScript
var discountCalc= {
    discount: 10,
    getDiscount: function(input){
      return this.discount + input;
    }
}

discountCalc.getDiscount(1); //11
```

Imagine we want to supply a bigger discount.

We can use `fn.call` to override discountCalculators *discount* by supplying an alternative *this* context:
```
discountCalc
.getDiscount
.call({discount: 100},1); //101
```
---
## Practice

Which method will change the `this` context of a JavaScript function call?
???

* `.call(obj)`
* `.context(obj)`
* `.this = ___`
* `.object()`

---
## Revision

Using the .???() method will change the ??? context of a JavaScript function call

* `call`
* `this`
* `context`
* `scope`
