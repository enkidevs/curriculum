---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout
  - deep
  - obscura

standards:
  javascript.browser-apis-browser.1: 10
  comp-sci.identify-network-protocols.9: 10
  comp-sci.identify-network-protocols.10: 10

links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/History_API#Moving_forward_and_backward){website}'


---

# Navigating the browser history

---
## Content

The History API allows navigation of the browser history.

To move backward once (like a *Back* button click)
```
window.history.back();
```
To move forward once (like a *Forward* button click):
```
window.history.forward();
```
To move backward (negative) or forward (positive) to a particular point in history, an integer can be passed:
```
window.history.go(int); /* current page
at 0, -1 goes back once, 1 goes
forward once */
```
The history length can be found by:
```
window.history.length;
```

---
## Practice

Move forwards once using the `History API`:

```javascript
window.???.???();
```


* `history`
* `forward`
* `navigation`
* `previous`
* `next`
* `length`

---
## Revision

Move backwards once using the `History API`:
```javascript
window.???.???();
```


* `history`
* `back`
* `forward`
* `go`
* `navigation`
* `length`
 
