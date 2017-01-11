# Revokable Proxies and Usages
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

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
// p.revoke is not a function(…)
```

**Potential Usages**

Proxies have a number of potential usages and we will probably see library and framework authors coming up with some exciting usages.

Some potential usages:

* Block access to values 
* Return different values
* Stop people setting certain values 
* Validation & logging
* Extending constructors
* As a shim/fallback for older browsers

---