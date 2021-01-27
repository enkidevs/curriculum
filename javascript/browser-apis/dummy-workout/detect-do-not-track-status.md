---
author: catalin
levels:
  - basic
  - advanced
  - medium
type: normal
category: feature
links:
  - '[davidwalsh.name](https://davidwalsh.name/detect-track-javascript){website}'
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Detect **DO NOT TRACK** status


---

## Content

Check whether a user has opted in or out for the **DO NOT TRACK** option of a browser, even though this property is passed via an **HTML** header.

```javascript
if(navigator.doNotTrack == 1) {
    // user has DNT enabled
}
```

This property returns: 

- `"1"` if **DNT** is enabled
- `"0"` if **DNT** is disabled
- `unspecified` otherwise

**IE 9/10** use ` navigator.msDoNotTrack`.
**IE 11** and **Safari 7.1.3+** use `window.doNotTrack`.

Older versions of **Firefox** return `"Yes"` or `"No"`.


---

## Revision

Check if the **DO NOT TRACK** is disabled:

```javascript
if (navigator.??? === ??? ) {
  //handle
}
```

- doNotTrack
- 0
- 1
- dontTrack
- trackStatus
- unspecified
