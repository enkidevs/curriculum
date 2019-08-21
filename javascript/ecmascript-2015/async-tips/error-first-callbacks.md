---
author: rosielowther

levels:
  - basic
  - beginner

type: normal

category: feature

standards:
  javascript.async.0: 10
  javascript.identify-common-design-patterns.3: 10

tags:
  - introduction
  - workout
  - deep

aspects:
  - obscura
  - workout
  - deep
  
links:
  - '[ruben.verborgh.org](http://ruben.verborgh.org/blog/2012/12/31/asynchronous-error-handling-in-javascript/){website}'

---
# Error-first Callbacks

---
## Content

Error-first callbacks have an error as the **first argument** of the callback function. If this value is **non-null** then an error has occurred.

For example for the callback:

```javascript
function pay(order, cardNo, callback){
  if (exists(cardNo)) {
    // ... take money from card
    callback(null, order.paid());
  } else {
    callback("Card "+ cardNo +" invalid.");
  }
}
```

An example of a suitable caller would be:

```javascript
pay(myOrder, myCard,
  function (errorMsg, paidMsg) {
    if (errorMsg) {
      return console.error("Error: "
                  + errorMsg);
      }
    console.log("Paid " + paidMsg);
  });
```

This pattern is commonly used in Node.js applications.

---
## Practice

Fill in the missing gaps in the following function definition such that it can be used as an **error-first** callback function:

```javascript
function myCallback(error, result) {
  if (???) {
    console.log('error', error)
  }
  console.log('result', ???)
}
```

* error
* result
* err
* return
* this
* Error
* throw new Error(error)

---
## Revision

Which statement is true about *error-first callbacks*:

???

* First argument of the callback function is an error.
* First argument of the main function is an error
* Errors are checked before the actual call
 
 
 
 
 
