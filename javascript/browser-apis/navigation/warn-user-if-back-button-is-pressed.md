---
author: catalin
type: normal
category: feature
links:
  - >-
    [viralpatel.net](http://viralpatel.net/blogs/disable-back-button-browser-javascript/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Warn user if **Back** button is pressed


---

## Content

As to prevent the loss of data in some cases, you will want to warn the user before pressing the **back** button and leave the current page.

The following snippet will add a warning message if the button is pressed:

```javascript
window.onbeforeunload = function() {
  alert("Your work will be lost.");
};
```

`onbeforeunload` event handler property contains the code executed when the `beforeunload` is sent. This event fires when a window is about to unload its resources. The document is still visible and the event is still cancelable.


---

## Practice

What is the name of the event fired when a user leaves the webpage?

???

What is the name of the event listener triggered before a user leaves the webpage?

???

- beforeunload
- onbeforeunload
- onback
- back
- exit
- leave
- onback
- onexit
- onleave


---

## Revision

Fill the missing event listener such that it will be automatically triggered when the user leaves the page:

```javascript
???.??? = function() {
  alert("Your work will be lost.");
};
```

- window
- onbeforeunload
- beforeunload
- ifbackpressed
- dom
- global
- events
 
