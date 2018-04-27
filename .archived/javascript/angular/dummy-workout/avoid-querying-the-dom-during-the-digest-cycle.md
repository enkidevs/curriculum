---
author: urish2

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

tags:

  - Performance

---
# Avoid querying the DOM during the `$digest` cycle

---
## Content

Whenever querying the DOM, there's a chance of performing a *Forced Layout*. 

The browser has to recalculate the updated layout of the document which can be expensive. 

```
$scope.$watch(function() { 
  return document.body.clientHeight;
}, documentResizeHandler);
```
In this case, it would be preferred to seperate the querying of the DOM from the `$digest` cycle to allow it to happen independently:

```
var lastSize = -1;
setInterval(function() { 
  var newSize = document.body.clientHeight;
  if (newSize !== lastSize) {
    documentResizeHandler(newSize);
    lastSize = newSize;
  }
}, 200);
```