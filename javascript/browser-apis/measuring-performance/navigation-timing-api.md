---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [10 HTML5 APIs Worth Looking
    Into](https://www.sitepoint.com/10-html5-apis-worth-looking/){website}
  - >-
    [Profiling Page Loads with the Navigation Timing
    API](https://www.sitepoint.com/profiling-page-loads-with-the-navigation-timing-api/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Navigation Timing API


---

## Content

The Navigation Timing API provides timing information about the page load process. It also monitors how a user navigates to a page.

### Timing Metrics

The API records the time at key points in the page load process and stores each event as a property of the `window.performance.timing` object.

For example you can measure the total page load time experienced by the user:

```js
window.addEventListener(
  "load",
  function () {
    setTimeout(function () {
      let timing =
        window.performance.timing;
      let userTime =
        timing.loadEventEnd -
        timing.navigationStart;
    }, 0);
  },
  false
);
```

### Navigation

The API also shows how a user navigated on a particular page. The `type` property can be `0` (URL, link etc), `1` (refreshed page), `2` (history) or `255` (other).

You can access this information by:

```js
let navigation =
  window.performance.navigation;
let navType = navigation.type;
let redirectCount =
  navigation.redirectCount;
// number of redirects to the current page
```


---

## Practice

The navigation API shows how a user navigated on a particular page. What are the missing values for the following type properties?

0 : ???
1 : ???
2 : ???
255 : Other.

- URL or link.
- Refreshed page.
- History.
- New page.
- Invalid link.
- Bookmarked page.


---

## Revision

Navigation API stores events as a property of which object?

???

- `window.performance.timing`
- `window.timing`
- `timing.loadEventEnd`
- `timing.navigationStart`
- `window.performance.navigation`
 
