---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

standards:

  javascript.evaluate-expressions.3: 10

  javascript.write-expressions.1: 10

tags:

  - strings

  - html

  - introduction

  - workout


links:

  - '[www.standardista.com](http://www.standardista.com/javascript/15-common-javascript-gotchas/){website}'


aspects:
  - introduction
  - workout


---

# `String.replace`

---
## Content

The `String.replace` method only changes the first occurrence of a substring, not all possible matches: 
```
var testString = "An example string for us";
testString = testString.replace(/ /,"%20"); 
// testString = "An%20example string for us"
```
To replace all occurrences, you need to set the global modifier:
```
var testString = "An example string for us";
testString = testString.replace(/ /g,"%20");
// "An%20example%20string%20for%20us"
```

---
## Practice

Complete the following code snippet to replace `+` with `%2B`:

```javascript
var s = 'x+y+z=w';
s=s.replace(???,'%2B');
console.log(s); // x%2By%2Bz=w
```

* `/\+/g`
* `\\+/g`
* `\+/g`
* `/\+/`

---
## Revision

??? is used to replace one or more occurrences of a substring with another string.


* String.replace()
* String.map()
* String.change()
* String.delete()

 
