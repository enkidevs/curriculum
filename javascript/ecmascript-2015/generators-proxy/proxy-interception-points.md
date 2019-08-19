---
author: alexjmackey

levels:
  - medium
  - advanced

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy){website}'

---
# Using Proxies

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

Of course you only need to specify those you want to intercept otherwise the default behavior will occur.

Here is an example of intercepting delete calls:

```javascript
var handler = {
  deleteProperty(target, key) {
    console.log("ignoring delete");
    return true;
  }
};

var obj = { x: "y" };
var proxy = new Proxy(obj, handler);
delete proxy.x; //ignoring delete
console.log(obj.x); //y
```

### Revocable Proxy

There is a special type of proxy called a **revocable proxy**.

This allows you to later deny access to the proxy by calling the revoke method.

First we use `Proxy.revocable` to obtain a revocable proxy:

```javascript
var rev = Proxy.revocable(
  {},
  {
    get: function(target, name) {
      console.log("accessed " + target);
    }
  }
);

var p = rev.proxy;
p.a; // accessed a
```

Then we can deny access to the proxy by calling the revoke method:

```javascript
p.revoke();
p.a;
// VM181:1 Uncaught TypeError:
// p.revoke is not a function(...)
```

### Potential Usages

Proxies have a number of potential usages and we will probably see library and framework authors coming up with some exciting usages.

Some potential usages:

* Block access to values
* Return different values
* Stop people setting certain values
* Validation & logging
* Extending constructors
* As a shim/fallback for older browsers in the future

---
## Practice

Fill in the gaps such that log statements hold true:

```javascript
const rev = ???.???({}, {
  ???: () => 42
});

const proxy = rev.???;
console.log(proxy.enki)
// 42

???.???()
console.log(proxy.enki)
// TypeError
```

* Proxy
* revocable
* get
* proxy
* rev
* revoke
* throw
* catch
* try
* new Proxy
* get()

---
## Revision

Fill in the gaps of the following snippet such that, using a Proxy, the proprieties of `pObj` cannot be deleted via `delete` keyword:

```javascript
const obj = {
  enki: 42
}

const proxyFn = {
  ???: (obj, prop) => true
}
const pObj = new ???(???, ???)
delete pObj.enki
console.log(pObj)
// { enki: 42 }
```

* deleteProperty
* Proxy
* obj
* proxyFn
* enki
* 42
* delete
* deleteOwnProperty
* proxy
* function
* function*
 
