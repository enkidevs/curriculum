---
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy){website}'

inAlgoPool:

---
## Content
# Using Proxies

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

**Revokable Proxy**

There is a special type of proxy called a **revokable proxy**.

This allows you to later deny access to the proxy by calling the revoke method.

First we use **Proxy.revocable** to obtain a revokable proxy:

```
var rev = Proxy.revocable({}, {
  get: function(target, name) {
  console.log('accessed ' + target);
  }
});

var p = rev.proxy;
p.a; //a accessed
```

Then we can deny access to the proxy by calling the revoke method:

```
p.revoke();
p.a;
// VM181:1 Uncaught TypeError:
// p.revoke is not a function(...)
```

**Potential Usages**

Proxies have a number of potential usages and we will probably see library and framework authors coming up with some exciting usages.

Some potential usages:

* Block access to values
* Return different values
* Stop people setting certain values
* Validation & logging
* Extending constructors
* As a shim/fallback for older browsers in the future

