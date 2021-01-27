---
author: mihaiberq
type: normal
category: must-know
tags:
  - introduction
links:
  - >-
    [Distinguish operational from programmatic
    errors](https://github.com/i0natan/nodebestpractices/blob/master/sections/errorhandling/operationalvsprogrammererror.md){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Operational vs. Programmer Errors


---

## Content

Errors in Node start off as scary. What if my server dies when there are hundreds of people connected? Do I restart it and disconnect all users? Do I handle all the possible errors such that no unwanted restart is needed?

The most accurate answer is likely also the most general one: it depends. Some errors are to be expected. Others are not.

**Operational errors** are a subset of the "expected errors". Your server doesn't accept passwords shorter than 10 characters, so it returns an error. You sent the wrong parameter to the API you're using and received a 400 Bad Request. You simply ran out of memory by opening too many files without closing them.

These are usually *run-time* errors which can be handled gracefully, without the risk of leaking any data or unexpected behavior. They do not represent a bug - mistakes happen everywhere and you are expected as a programmer to handles others'.

**Programmer errors**, on the other hand, are considered bugs. Reading an undefined value, a leaking database connection, calling async functions without a callback or not validating user input are all examples of errors that usually require the application to be restarted. Moreover, not handling an external operational error (400 or 500 HTTP codes) in your code is also  considered to be a programmer error.

However, restarting the server won't solve bugs and the only permanent solution is to change the code in question.

To make the distinction between the two types is the first step in being able to properly handle them.

Note: You might have also heard of "exceptions". An exception is a "thrown error":

```javascript
if(err){
  throw new Error('exception here');  
}

callback(new Error('error here'));
```


---

## Practice

Can you identify type of error most likely depicted in the following snippet?

```javascript
import http from 'http';
...
// create the request header
http.request({host: test.com,
  port: 80,
  path: '/signup',
  method: 'POST'
  }, (res, err) => err && console.log(err))
  // add the data
    .write(
      'username': 'enki',
      'password': 'enki'
    );
```

???

- Handled operational error
- Unhandled operational error
- Handled programmer error
- Unhandled programmer error


---

## Revision

A programmer error is

???

- a problem where the program unexpectedly crashes
- a problem where the program expectedly crashes
- a problem with the server configuration
- a problem on the client
- an unhandled exception
