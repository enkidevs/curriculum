---
author: pawel
type: normal
category: tip
tags:
  - deep
  - workout
  - polyfill
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Meaning of Polyfill


---

## Content

Polyfill (or polyfiller) is downloadable code which provides facilities that are not built into a web browser. It implements technology that a developer expects the browser to provide natively, providing a more uniform API landscape. 

A great example is `FlashCanvas`, implementation of the HTML5 Canvas API using a Flash plug-in. A rare commercial polyfill, it comes in a paid version, as well as a free version, which lacks a few advanced features like shadows.

Another example could be polyfilling `String.prototype.startsWith()` with the following snippet:

```javascript
if (!String.prototype.startsWith) {
  String.prototype.startsWith = 
   function(searchString, position) {
     position = position || 0;
     return this.indexOf(searchString,
            position) === position;
  };
}

```


---

## Practice

A polyfill provides... ???

- technology that a developer expects the browser to provide natively.
- new features.
- all HTML tags.


---

## Revision

A polyfill is a downloadable code that provides 

??? .

- support for older browsers
- new features
- all HTML tags
 
