# Using `.test()` with RegExp
author: fsites

levels:

  - basic

  - beginner

type: normal

category: feature

tags:

  - 'javascript, regex, regular expressions, regexp, test'

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/test){website}

---
## Content

The `.test()` method takes a string  and checks it against a RegEx. 

The returned value is boolean. `true` if there is a match, `false` if there is no match.


```
var str = "I learned a new tip with Enki.";

var containsEnki = /Enki/i;
containsEnki.test(str); // true

var containsAtSchool = /At School/i;
containsAtSchool.test(str) // false
```

---
## Practice

What does the following code snippet return? ???

```javascript
var str = "Practicing my RegExp with Enki!";

var containsEnki = /Enki/i;
containsEnki.test(str);

var containsRegExp = /Regular Expressions/i;
containsRegExp.test(str);
```

* True, False
* True, True
* False, True
* False, False

---
## Revision

Matching a string with a RegEx is done by 

???

*regex.test(string);
*regex.match(string);
*regex.check(string);