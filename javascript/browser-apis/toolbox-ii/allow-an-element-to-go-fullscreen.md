---
author: rosielowther
type: normal
category: feature
notes: >-
  Do I need to give examples of the inconsistencies? The info on this seems
  pretty vague and it seems like people are mostly using a github work-around.
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Allow an element to go fullscreen


---

## Content

The HTML5 Fullscreen API allows an element to be viewed filling the whole screen and hiding everything else. This can be used for example to play a video without distraction.

To view the element in fullscreen use:

```plain-text
requestFullscreen()
```

Users can leave fullscreen mode by pressing the *ESC* button and will be prompted to do so by an automatic alert.

There are inconsistencies in the implementation of this API between browsers and specific browsers may require identifiers.


---

## Practice

How can you view an element in fullscreen with the **HTML Fullscreen API** ?

???

- `requestFullscreen()`
- `viewFullScreen()`
- `viewScreen()`
- `applyFullscreen()`


---

## Revision

How can you view an element in fullscreen with the **HTML Fullscreen API** ?

???

- `requestFullscreen()`
- `requestFullScreen()`
- `fullScreen()`
- `viewScreen()`
- `applyFullscreen()`
 
