# Exceptions
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Control_flow_and_error_handling){website}

---
## Content

JavaScript like many other languages allows you to catch and throw exceptions.
 
Below is the syntax to throw an exception:
```
throw "bad error";
```
Exceptions can then be caught with a try/catch block:
```
try{
   throw "bad error";
}
catch (e) {
   //exception caught here
}
finally {
  //ran always
}
```
You can even create your own exception types:
```
function BadException(message) {
  this.message = message;
}

throw new 
BadException("something bad");
```

---
## Practice

Complete the following block in the code snippet such that the comments make sense:

```
??? {
   throw "my error";
} ??? (e) {
   //exception is caught here
} ??? {
   // will always run
}
```

*`try`
*`catch`
*`finally`
*`final`
*`do`
*`while`
*`new`
*`for`

---
## Revision

Complete the missing keyword for throwing an exception:
```
??? "my exception"
```

*`throw`
*`raise`
*`catch`
*`try`
*`finally`