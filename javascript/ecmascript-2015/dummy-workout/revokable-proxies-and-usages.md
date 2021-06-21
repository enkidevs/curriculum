---
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy/revocable){website}'


---

# Revokable Proxies and Usages

---
## Content

There is a special type of proxy called a **revokable proxy**. 

This allows you to later deny access to the proxy by calling the revoke method.

First we use **Proxy.revocable** to obtain a revokable proxy:

```javascript
let rev = Proxy.revocable({}, {
  get: function(target, name) {
  console.log('accessed ' + target);
  }
});

let p = rev.proxy;
p.a; //a accessed
```

Then we can deny access to the proxy by calling the revoke method:

```javascript
rev.revoke();
p.a;
// Uncaught TypeError: Cannot perform 'get'
// on a proxy that has been revoked
```

One use of a revokable proxy would be to deny access if via a property access an error occurred a set number of times.

**Potential Usages**

Proxies have a number of potential usages and we will probably see library and framework authors coming up with some exciting usages.

Some potential usages:

* Block access to values
* Return different values
* Stop people setting certain values
* Validation & logging
* Extending constructors
* As a shim/fallback for older browsers

 
