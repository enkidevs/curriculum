---
author: rosielowther

levels:

  - advanced

type: normal

category: feature

standards:

  javascript.async.3: 10

  javascript.async.2: 10

  javascript.use-modules.2: 10

tags:

  - workout

  - deep

  - async

  - promises

  - npm

aspects:
  - workout
  - obscura
  - deep

links:

  - '[jlongster.com](http://jlongster.com/Taming-the-Asynchronous-Beast-with-CSP-in-JavaScript){website}'
  - '[www.usingcsp.com](http://www.usingcsp.com/){website}'
  - '[github.com](https://github.com/ubolonton/js-csp){website}'


---

# CSP using _js-csp_

---
## Content

"**Communicating Sequential Processes**" (CSP) is a method for **concurrent processes** to communicate during processing.

**ES6 Generators** have allowed CSP to be used in JavaScript. A popular library is _js-csp_. CSP makes it easy to express complex asynchronous flows.

Message are passed between processes via a **channel**. Each channel can have many writers and readers. It's possible to **take** a value from the channel (the taker blocks if one isn't available). Or, **put** a value on a channel (the putter blocks if a taker isn't available to take it).

For example:
```
var ch = csp.chan(); // new channel
csp.takeAsync(ch, function(value) {
   return console.log("Yay ", value); 
});
csp.putAsync(ch, 100); 
// puts 100 ... takes 100, "Yay 100"
```

---
## Practice

CSP (Communicating Sequential Processes) is a method for ??? processes to ??? during processing.


* concurrent
* communicate
* synchronous
* sequential
* asynchronous
* fail
* make system calls

---
## Revision

Create a new csp channel:
```javascript
var ch = ???.???;
```

* `csp`
* `chan()`
* `channel()`
* `new`
* `generate()`
* `putAsync()`
* `takeAsync()`

 
