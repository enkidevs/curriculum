---
author: rosielowther

levels:

  - beginner

  - basic

  - medium

type: evaluateThis

category: tip

---
# URLs in JS

---
## Content

Do you know how to access and
alter the URL of a page?

---
## Game Content

```javascript
// For https://www.enki.com/
console.log(window.location.protocol);
```

* `https:`
* `www.google.co.uk`
* `/`

%exp
The `window.location.protocol` property returns the web protocol of the page.
%

---

```javascript
// For https://www.enki.com/
console.log(window.location.host);
```

* `www.enki.com`
* `https:`
* `/`

%exp
`window.location.host` property returns the name of the internet host (of the current page).
%

---

```javascript
// https://enki.com/#contact
console.log(window.location.pathname);
```

* `/`
* `#contact`
* `enki.com`

%exp
This property returns the pathname of the current page.
%

---

```javascript
// https://enki.com/#contact
console.log(window.location.hash);
```

* `#contact`
* `/`
* `enki.com`

%exp
The property returns the anchor part of the URL, including the hash (#) sign.

The anchor part of a `URL` is a internal page reference, it usually appears at the end of the `URL` and it refers to a section within a web page.
%

---

```javascript
// For https://enki.com/#contact
var obj = {};
history.pushState(obj,"greet","hi");
console.log(window.location);
```

* `https://enki.com/hi`
* `https://enki.com/#contact/hi`
* `https://enki.com/greet/hi`

%exp
This property returns the whole `URL` it is applied to. It is usually used in JavaScript to redirect the browser to that location it is returning.
%
