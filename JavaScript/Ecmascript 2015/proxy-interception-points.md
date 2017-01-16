# Proxy Interception Points
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

Proxies allow you to intercept many different operations and methods:

* new operator
* getPrototypeOf
* setPrototypeOf
* isExtensible
* preventExtensions
* getOwnPropertyDescriptor
* in operator
* delete
* defineProperty
* enumerate
* ownKeys
* apply

Of course you only need to specify those you want to intercept otherwise the default behaviour will occur.

Here is an example of intercepting delete calls:

```
var handler = {
 deleteProperty (target, key) {
  console.log("ignoring delete");
  return true
 }
}

var obj = { x: 'y' }
var proxy = new Proxy(obj, handler)
delete proxy.x; //ignoring delete
console.log(obj.x); //y
```

---
