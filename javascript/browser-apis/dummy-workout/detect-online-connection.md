---
author: catalin
levels:
  - basic
type: normal
category: tip
links:
  - '[davidwalsh.name](https://davidwalsh.name/detecting-online){website}'
  - '[caniuse.com](http://caniuse.com/#feat=online-status){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Detect online connection


---

## Content

Check if a user is connected to internet with the help of `navigator` property.

```javascript
if(navigator.onLine) { 
	// ...
}
```

This will return a `Boolean` value  for whether or not the user is connected to the internet.

The `offline` and `online` events can also be used with a listener.

```javascript
window.addEventListener('online', 
   myFunction);
window.addEventListener('offline', 
   myFunction);


```


---

## Practice

Complete the check to see if a user is connected to the internet:

    if (???.???) {
      //
    }

- navigator
- onLine
- nav
- window
- connected


---

## Revision

Complete the check to see if a user is connected to the internet:

    if (???.???) {
      //
    }

- navigator
- onLine
- nav
- window
- connecte
