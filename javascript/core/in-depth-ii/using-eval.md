---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

tags:

  - obscura

  - workout


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/eval){website}'


aspects:
  - obscura
  - workout


---

# Using `eval`

---
## Content

`eval` ("evil") evaluates the string passed to it as Javascript code:
```
var str = "if(a){1+2;} else{1+3;}";
var a = true;
var b = eval(str);  // returns 3
```
Avoid using `eval` if there is an alternative. Code generally runs more slowly if `eval  ` is used because it has to disable optimisations. 

The security of `eval` is poor. The string could be changed by a third party extension to produce malicious code.

Third party code can access the scope in which `eval()` was called and this can also lead to attacks.

---
## Practice

What does the following JS code return when ran? ???

```javascript
var str = "if(flag){2*8;} else{-2*8;}";
var flag = false;
var b = eval(str);
```


* -16
* 16
* undefined
* NaN

---
## Revision

Evaluating javascript code passed as a string is done by ???


* eval()
* evil()
* (string).toJS()

 
