---
author: catalin

levels:

  - basic

type: normal

category: must-know

standards:

  javascript.exceptions.0: 10

  javascript.exceptions.1: 10

  javascript.exceptions.2: 10

tags:

  - introduction

  - workout


links:

  - '[davidwalsh.name](https://davidwalsh.name/detect-error-type-javascript){website}'


aspects:
  - introduction
  - workout


---

# Detect an error type

---
## Content

Using the `try/catch` block you can catch an exception then figure out what type of error occurred in your code.
For example:
```javascript
try {
	eval('5 + / 3'); }
catch(e) {

	if(e.constructor == SyntaxError) {
		//handle if is SyntaxError
	}
	console.log(e.constructor.name);
}
```
The code snippet above will try to run `eval('5 + / 3');` which raises a `SyntaxError` due to the invalid expression evaluated.

You can get the name of the error with `e.constructor.name`.

In addition, if you think you can handle a specific exception, checking for it is easy: `e.constructor == SyntaxError`.

---
## Practice

Complete the following code snippet such that the `try/catch` block will handle `SyntaxError`s:

```javascript
??? {
    eval('3.14 + /2.71');
} catch (???) {
  if (err.??? == ???) {
    //handling
  }
}
```


* `try`
* `err`
* `constructor`
* `SyntaxError`
* `e`
* `EvalError`
* `Error`
* `name`
* `typeof`

---
## Revision

Complete the snippet so that the `try/catch` block will handle `SyntaxError`:

```javascript
try {
  eval('5 + /3');
} ??? (e) {
  if(e.constructor == ???) {
   //handle
  }
}

```


* `catch`
* `SyntaxError`
* `name`
* `EvalError`
* `try`
* `syntax`
* `Error`

 
