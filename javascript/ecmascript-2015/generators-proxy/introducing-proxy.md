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
# Introducing Proxy

---
## Content

`Proxy` allows you to intercept (referred to as trap) calls to actions on objects such as property access and enumeration.

To illustrate proxy usage we will create a logger proxy to log any calls made to an objects property.

First we will create a handler to perform this logic:

```javascript
var loggerHandler = {
  get: function(obj, prop) {
    console.info(prop + " was accessed");
    return obj[prop];
  }
};
```

Next we'll create an object to use with this:

```javascript
var x = { someProp: "enki" };
```

Then we will wrap our object with a Proxy and pass in the logger handler:

```javascript
var p = new Proxy(x, loggerHandler);
```

If we access property on obj itself it will work as per normal:

```javascript
x.someProp; //enki
```

..so we need to be sure to access the obj via the proxy wrapper:

```javascript
p.someProp //someProp was accessed
```

Proxies can also be used to intercept set calls. Maybe for example we want to validate a value passed in without changing the underlying code:

```javascript
var setWrapper = {
  set: function(obj, prop, value) {
    if (prop === "company") {
      if (value != "enki") {
        return;
      }
    }
  }
};
```

---
## Practice

Fill in the gaps of the following snippet such that the logs stand true:

```javascript
const obj = {
  enki: 'Enki'
}
console.log(obj.enki)
// Enki

const proxyFn = {
  ???: () => ???
}
const proxy = ???(???, ???)

console.log(???.enki)
// 42
```

* get
* 42
* new Proxy
* obj
* proxyFn
* proxy
* enki
* Enki
* Proxy
* get()

---
## Revision

Fill in the missing outputs of the `console.log` calls:

```javascript
const proxyFn = {
  get: (obj, prop) => "enki"
};
const obj = {
  number: 42
};
const proxy = new Proxy(obj, proxyFn);

console.log(obj.number);
// ???
console.log(proxy.number);
// ???
```

* 42
* enki
* error
* obj
* prop
* Proxy
* Enki
 
