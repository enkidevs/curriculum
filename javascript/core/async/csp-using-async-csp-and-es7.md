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
  - deep


links:

  - '[www.npmjs.com](https://www.npmjs.com/package/async-csp){website}'


---

# CSP using _async-csp_ and ES7

---
## Content

_async-csp_ is a npm package which creates Communicating Sequential Processes (CSP) style **channels** using **ES7 async/await**.

A **Channel** is a container which makes use of **Promises** to handle the flow of data.

Put a value on a channel by using `.put()` and take a value from a channel by using `.take()`.

For example, this function places a value on the channel every second:
```
async function puts(channel) {
    for (let i = 0; i < 5; i++) {
        await timeout(1000);
        await channel.put(i);
    }
}
```

---
## Practice

Which two functions are used to place a value onto a channel and to take a value from a channel? ???


* `.put()` and `.take()`
* `.add()` and `.remove()`
* `.add()` and `.take()`
* `.put()` and `.remove()`

---
## Revision

What does a **CSP Channel** use to handle the flow of data?

???


* Promises
* Generators
* `put()`
* `take()`
* nothing

 
 
 
