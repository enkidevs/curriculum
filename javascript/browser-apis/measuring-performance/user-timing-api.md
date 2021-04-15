---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [www.sitepoint.com](http://www.sitepoint.com/10-html5-apis-worth-looking/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# User Timing API


---

## Content

The User Timing API is used to measure the **performance** of JavaScript code.

The main concepts are '**mark**' (a timestamp) and '**measure**' (the time elapsed between two timestamps).

```js
// timestamps named 'start' and 'end'
performance.mark("start");
// ... do something
performance.mark("end");
// measure the time elapsed
performance.measure(
  "duration",
  "start",
  "end"
);
```

The main benefit of this API is that it has a higher resolution than the Date API and that you don't need to introduce variables when you test your code's performance.


---

## Practice

Fill the gap to compute the `duration` between `start` and `end` marks:

```javascript
performance.???(
  "???",
  "start",
  "end"
);
```

- `measure`
- `duration`
- `time`
- `elapsed`
- `timing`


---

## Revision

Fill the gap to compute the `duration` between `start` and `end` marks:

```javascript
performance.???(
  "???",
  "start",
  "end"
);
```

- `measure`
- `duration`
- `time`
- `elapsed`
- `timing`
 
