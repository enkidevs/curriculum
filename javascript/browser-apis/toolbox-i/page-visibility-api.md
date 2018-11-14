---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout
  - deep
  - obscura

standards:
  javascript.browser-apis-device.0: 10
  javascript.browser-apis-browser.1: 10


links:
  - '[MDN docs on visibleState](https://developer.mozilla.org/en-US/docs/Web/API/Document/visibilityState0{website}'
  - '[www.html5rocks.com](http://www.html5rocks.com/en/tutorials/pagevisibility/intro/){website}'


---

# Page Visibility API

---
## Content

The *Page Visibility API* allows you to query whether a page is visible or in focus.

It is common for users to have multiple tabs open so this information could be used to trigger an action such as starting an animation or stopping network requests to save resources.

When the user minimises the webpage or moves to a different tab, the API sends a `visibilityChange` event.

Note that at the time of writing the name for this event and hidden property differs across browsers.

Possible property values for `visibleState` are:
  - hidden
  - visible
  - prerender
  - unloaded

Detecting visibility changes:

```javascript
document
.addEventListener("visibilitychange",
function(){
	if(document.hidden){
		console.log('hidden');
	}
	else{
		console.log('shown');
	}
}, false);
```

---
## Practice

Which of the following is not a visibleState property value? ???

* rawview
* hidden
* visible
* prerender
* unloaded

---
## Revision

Complete the following JS code snippet to add an event listener for a visibility change:

```javascript
document.???("???", function() {
```

* `addEventListener`
* `visibilitychange`
* `newEventListener`
* `newListener`
* `change`
* `detectvisibility`
 
