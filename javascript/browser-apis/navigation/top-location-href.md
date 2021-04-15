---
author: pawel
type: normal
category: tip
links:
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Window/location){website}
  - >-
    [www.w3schools.com](http://www.w3schools.com/js/js_window_location.asp){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `top.location.href`


---

## Content

`top.location.href` returns the location of the topmost window in the window hierarchy. If a window has no parent, `top` is a reference to itself:

```plain-text
window === window.top
```

It is useful when dealing with pages that have multiple `iframes` (e.g. map). Inside the frame, `window.location.href` returns the current frame, while `top.location.href` references the main browser window.


---

## Practice

Assuming that the current window has no parent, what would the following check return? 

???

```javascript
window === window.top
```

- True
- False
- Error
- Undefined


---

## Revision

Assume current window has no parent. What will the output of the following check be?

```javascript
window === window.top 
// ???
```

- `true`
- `false`
- `error`
 
