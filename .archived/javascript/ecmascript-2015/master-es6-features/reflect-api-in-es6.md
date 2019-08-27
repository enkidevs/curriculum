---
author: rosielowther

levels:

  - medium

type: normal

category: feature

aspects:
  - introduction
  - new
  - workout
  - deep

links:

  - '[www.2ality.com](http://www.2ality.com/2014/12/es6-proxies.html){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect){website}'


---

# Reflect API in ES6

---
## Content

ES6 has a global object called `Reflect` that has methods to implement all interceptable operations of the JavaScript **meta object** protocol.

Reflect is very useful for implementing **proxies** as the names of the Reflect methods are the same as those of the proxy handler methods. This helps with forwarding operations from the proxy handler to the proxy target.

Reflect can also be useful for:

**Indicating success**

Some Reflect methods return booleans indicating whether the operation succeeded.
```
Reflect.defineProperty
  (target, propertyKey, propDesc)
// Like Object.defineProperty()
// but returns a boolean.
```

**Implementing operator functionality**

Some Reflect methods implement functionality that is otherwise only available via operators:
```
Reflect.get
    (target, propertyKey, receiver?)
```

**Shorten apply**

Produce a cleaner and shorter version of `.apply`.
```
Function.prototype.apply.call
    (func, thisArg, args) // ES5
Reflect.apply(func, thisArg, args) // ES6
```

---
## Practice

Complete the missing code bits to implement functionality that is otherwise only available via operators:

```javascript
Reflect.???(target,
    propertyKey, ???)
```


* `get`
* `receiver?`
* `Reflect`
* `initProp`
* `propDesc`
* `defineProperty`
* `flag`

---
## Revision

Complete the missing code bits as to indicate success of an operation using ES6's `Reflect` object:
```
Reflect.???(???,  
  propertyKey, propDesc);
```


* `defineProperty`
* `target`
* `Reflect`
* `bool`
* `initProp`

 
