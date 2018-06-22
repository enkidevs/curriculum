---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:

  javascript.control-flow.6: 10

  javascript.exceptions.2: 10

  javascript.exceptions.3: 10

tags:

  - introduction

  - workout


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Control_flow_and_error_handling){website}'


aspects:
  - introduction
  - workout


---

# Exceptions

---
## Content

Some operations in our programs can potentially fail due to no fault of the developer. 

For example you could attempt to retrieve data from a remote server that is not currently available or attempt to read from a file that has been deleted.

One way of handling these situations is to use try, catch blocks and exceptions - you may have come across these constructs in other languages.

As a general guideline exceptions should be used for *exceptional* situations such as a file not being available rather than as a way to control a programs flow such as exiting a loop.

The below example shows how to use try/catch to handle any errors that occur in *dangerousFunction*:

```
try{
 //put code that might fail in try block
 dangerousFunction();
}
catch (ex) {
 //catch will trap any exceptions
 console.log(ex);
}
finally {
 /*finally block will always be run
   whether errors or not*/
 console.log('all done');
}
```

**throw**

Let's pretend **dangerousFunction** needs to read a file. We might want to test first that the file exists and if it does not then throw an exception that will be handled by the above catch block.

The below code shows how to do this:

```
function dangerousFunction(){
 if(!fileExists()){
  throw "file does not exist";
 }
 ...
}
```

You can create your own exception types which you may do to represent specific situations or hold useful data:

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


* `try`
* `catch`
* `finally`
* `final`
* `do`
* `while`
* `new`
* `for`

---
## Revision

Complete the missing keyword for throwing an exception:
```
??? "my exception"
```


* `throw`
* `raise`
* `catch`
* `try`
* `finally`

 
