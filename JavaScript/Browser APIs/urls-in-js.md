# URLs in JS
author: rosielowther

levels:

  - beginner 

  - basic

  - medium

type: evaluateThis

category: tip

---
## Content

Do you know how to access and alter the URL of a page?

---
## Game Content

```
// For https://www.enki.com/
console.log(window.location.protocol);
```
* `https:`
* `www.google.co.uk`
* `/`
---
```
// For https://www.enki.com/
console.log(window.location.host);
```
* `www.enki.com`
* `https:`
* `/`
---
```
// https://enki.com/#contact
console.log(window.location.pathname);
```
* `/`
* `#contact`
* `enki.com`
---
```
// https://enki.com/#contact
console.log(window.location.hash);
```
* `#contact`
* `/`
* `enki.com`
---
```
// For https://enki.com/#contact
var obj = {};
history.pushState(obj,"greet","hi");
console.log(window.location);
```
* `https://enki.com/hi`
* `https://enki.com/#contact/hi`
* `https://enki.com/greet/hi`
