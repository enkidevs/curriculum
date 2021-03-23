---
author: tommarshall
type: normal
category: must-know
links:
  - >-
    [Page Visibility API](https://developer.mozilla.org/en-US/docs/Web/API/Page_Visibility_API){website}
  - >-
    [Using the PageVisibility API](http://www.html5rocks.com/en/tutorials/pagevisibility/intro/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
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

Which of the following is not a `visibleState` property value? 

???

- rawview
- hidden
- visible
- prerender
- unloaded


---

## Revision

Complete the following JS code snippet to add an event listener for a visibility change:

```javascript
document.???(
  "???",
  function() {}
);
```

- `addEventListener`
- `visibilitychange`
- `newEventListener`
- `newListener`
- `change`
- `detectvisibility`
 
