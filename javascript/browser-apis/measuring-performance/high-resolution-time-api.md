---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [www.sitepoint.com](http://www.sitepoint.com/10-html5-apis-worth-looking/
    ){website}
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Performance/now){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# High Resolution Time API


---

## Content

The High Resolution Time API allows you to perform precise timing measurements.

To use the High Resolution Time API call `performance.now()`.

The API will return a numeric value representing the current time (e.g `773665.7000000001`).

The values returned by `performance.now()` always increase constantly and are not subject to time adjustments such as daylight savings and synchronization logic (NTP).

The API can represent time with up to microsecond precision and is much more accurate than other JavaScript timing features such as `Date.now()` which return a value to the nearest millisecond.

You can use the High Resolution Time API to measure the **performance** of your code:

```javascript
var start = performance.now();
// do something
var end = performance.now();
console.log("do something took " +
           (end - start) + " milliseconds");
```

The API could also be used for precise timing in game, animation or audio logic.


---

## Practice

Which method call of the High Resolution Time API returns the current time?

???

The returned value by the method above is represented in ???, with ??? precision.

The measurement is ??? exact than the one accessible via `Date.now()`

- performance.now()
- milliseconds
- microsecond
- more
- less
- nanosecond
- resolution.start()
- highres.run()
- resolution.time()
- second
- day


---

## Revision

What is the correct call of the High Resolution Time API that returns the current time in milliseconds, with microseconds precision?

???

- performance.now()
- resolution.start()
- highres.run()
- resolution.time()
