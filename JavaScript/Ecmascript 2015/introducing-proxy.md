# Introducing Proxy
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

---
## Content

**proxy** is new to ES6 and allows you to intercept (referred to as trap) calls to actions on objects such as property access and enumeration.

To illustrate proxy usage we will create a logger proxy to log any calls made to an objects property.

First we will create a handler to perform this logic:

```
var loggerHandler = {
 get: function(obj, prop) {
 console.info(prop + " was accessed");
 return obj[prop];
 }
}
```

Next we'll create an object to use with this:

```
var x = { someProp: "enki"};
```

Then we will wrap our object with a Proxy and pass in the logger handler:

```
var p = new Proxy(x, loggerHandler);
```

If we access property on obj itself it will work as per normal:
```
x.someProp; //enki
```

..so we need to be sure to access the obj via the proxy wrapper:
```
p.someProp //some prop was accessed
```

Proxies can also be used to intercept set calls. Maybe for example we want to validate a value passed in without changing the underlying code:

```
var setWrapper = {
set: function(obj, prop, value) {
 if (prop === "company") {
  if (value!="enki"){
   return;
  }
 }
}}
```

---