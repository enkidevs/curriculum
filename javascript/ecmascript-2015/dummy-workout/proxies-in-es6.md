---
author: rosielowther
levels:
  - basic
  - advanced
  - medium
type: normal
category: feature
links:
  - '[github.com](https://github.com/lukehoban/es6features#arrows){website}'
  - '[www.2ality.com](http://www.2ality.com/2014/12/es6-proxies.html){website}'
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Proxies in ES6


---

## Content

In ES6, you can redefine the semantics of some operations using **proxies**. 

Proxies are special objects, created with two parameters:

- **handler**: for each operation, there is a corresponding handler method (a **trap**) that intercepts the operation on its way to the target and performs that operation. 

- **target**: if the handler doesn’t intercept the operation then the operation is performed on the target.


    var target = {};
    var handler = {
      get: function (receiver, name) {
        return `Hello, ${name}!`;
      }
    };

    var proxy = new Proxy(target, handler);
    console.log(proxy.world);
    // Hello, world!

However, because the handler doesn't implement a trap **set**(setting properties) alongside **get** trap, the following property can be created for the `target`:

    proxy.myProp = 'abc';
    console.log(target.myProp);
    // abc

ES6 also lets you create proxies that can be switched off (**revoked**):

    let {proxy, revoke} =
        Proxy.revocable(target, handler);
    // switch off by calling revoke()

Warning: proxies are an advanced ES6 feature, but are not yet implemented by many browsers or transpilers.


---

## Practice

Complete the code snippet to create a proxy which can be switched off:

    let {proxy, ???} = 
        Proxy.???(target, handler);

- revoke
- revocable
- switchoff
- switch
- switchable
- turn_off
- end


---

## Revision

What two parameters does proxies have?

???

- handler & target
- target & host
- host & handler
- name & proxy
- proxy & function
- request & target
 
