# Data type comparison in `switch` statements
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

tags:

  - ''

links:

  - >-
    [www.standardista.com](http://www.standardista.com/javascript/15-common-javascript-gotchas){website}

---
## Content

The `==` operator does not care for types. Therefore the following alert will show:

```
var test = 5;
if(test == '5'){ 
  alert("Hello World?");  
}
```

However, JavaScript is using strict comparision (similar to `===`) in `switch` statements:
```
var test = 5;
switch(test){
  case '5':
  alert("Hello World?"); 
}
```

This alert will not show since the data types do not match.

---
## Revision

The following code snippet would output ??? .
```javascript
var x = 10;
switch(x){
  case '10':
     console.log("Hi!");
}
```
*nothing
*Hi!
*an error