---
author: Bruno

levels:

  - beginner

type: normal

category: tip

standards:

  javascript.standard-library.5: 10


links:

  - '[2ality.com](http://www.2ality.com/2014/02/time-values.html){blog}'
  - '[moment.js](http://momentjs.com/){documentation}'


---

# Milliseconds since Epoch

---
## Content

Standard way:
```
new Date().getTime()
// 1259359833574
```
Shorter way:
```
+new Date()
// 1259359833574
```
The above is using the `+` shortcut to convert the date object to a  number.

For more powerful date manipulation,
try `moment.js`.

---
## Practice

What is missing from the following code snippet for getting the current time in milliseconds? 

```javascript
???new ???();
```


* `+`
* `Date`
* `=`
* `typeof`
* `milliseconds`
* `mseconds`

---
## Revision

Get the current time in milliseconds(since 1 Jan 1970):
```
var time = Date.???;
```

* now();
* getMillis();
* getMilliseconds();

 
