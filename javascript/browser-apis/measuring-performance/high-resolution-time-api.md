---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: feature


links:

  - '[www.sitepoint.com](http://www.sitepoint.com/10-html5-apis-worth-looking/ ){website}'
  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Performance/now){website}'


---
## Content
# High Resolution Time API

The High Resolution Time API allows you to perform precise timing measurements. 

To use the High Resolution Time API call `
performance.now()`

The API will return a numeric value representing the current time such as  *773665.7000000001*.

The values returned by `performance.now()` always increase constantly and are not subject to time adjustments such as daylight savings and synchronisation logic (NTP). 

The API can represent time with up to microsecond precision and is much more accurate than other JavaScript timing features such as `Date.now()` which return a value to the nearest millisecond.

You can use the High Resolution Time API to measure the **performance** of your code:
```
var start = performance.now();
// do something
var end = performance.now();
console.log("do something took " + 
           (end - start) + " milliseconds");
```

The API could also be used for precise timing in game, animation or audio logic.

---
## Revision

What command must you call in order to use the High Resolution Time API call? ???


* `performance.now()`
* `resolution.start()`
* `highres.run()`
* `resolution.time()`

