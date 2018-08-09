---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[www.sitepoint.com - apis](http://www.sitepoint.com/10-html5-apis-worth-looking/){website}'
  - '[www.sitepoint.com - profiling](http://www.sitepoint.com/profiling-page-loads-with-the-navigation-timing-api/){website}'


---

# Navigation Timing API

---
## Content

The Navigation Timing API provides timing information about the page load process. It also monitors how a user navigates to a page.

### Timing metrics

The API records the time at key points in the page load process and stores each event as a propriety of the `window.performance.timing` object. 

For example you can measure the total page load time experienced by the user:
```
window.addEventListener("load", function() {
  setTimeout(function() {
    var timing = window.performance.timing;
    var userTime = timing.loadEventEnd 
              - timing.navigationStart;
  }, 0);
}, false);

```

### Navigation

The API also shows how a user navigated on a particular page. The `type` property can be `0` (URL, link etc), `1` (refreshed page), `2` (history) or `255` (other). 

You can access this information by:
```
var navigation =
       window.performance.navigation;
var navType = navigation.type; 
var redirectCount = 
       navigation.redirectCount;
// number of redirects to current page
```

---
## Practice

The navigation API shows how a user navigated on a particular page. What are the missing values for the following type properties? 

0 : ???
1 : ???
2 : ???
255 : Other.


* URL or link.
* Refreshed page.
* History.
* New page.
* Invalid link.
* Bookmarked page.

---
## Revision

Navigation API stores events as a propriety of which object?

???


* `window.performance.timing`
* `window.timing`
* `timing.loadEventEnd`
* `timing.navigationStart`
* `window.performance.navigation`

 
