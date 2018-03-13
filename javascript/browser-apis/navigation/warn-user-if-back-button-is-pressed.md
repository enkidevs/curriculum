---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: feature


links:

  - '[viralpatel.net](http://viralpatel.net/blogs/disable-back-button-browser-javascript/){website}'


---
## Content
# Warn user if **Back** button is pressed

As to prevent the loss of data in some cases, you will want to warn the user before pressing the **back** button and leave the current page.

The following snippet will add a warning message if the button is pressed:
```javascript
window.onbeforeunload = function() { 
  return "Your work will be lost."; 
};

```
`onbeforeunload` event handler property contains the code executed when the `beforeunload` is sent. This event fires when a window is about to unload its resources. The document is still visible and the event is still cancelable.

---
## Revision

Fill the missing gaps in order to warn the user if the **Back** button is pressed:
```javascript
window.??? = function() {
  return "Your work will be lost.";
};
```


* `onbeforeunload`
* `beforeunload`
* `ifbackpressed`

