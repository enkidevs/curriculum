---
author: catalin
levels:
  - basic
  - beginner
type: normal
category: how to
standards:
  javascript.identify-common-design-patterns.5: 10
tags: []
links:
  - >-
    [fredkschott.com](http://fredkschott.com/post/2014/03/understanding-error-first-callbacks-in-node-js/){website}
aspects:
  - introduction
  - workout
---

# First-error callbacks in 

**Node**


---

## Content

The `"error-first"` callback (also "errorback" or "err-back") has become the standard protocol for **Node** as to enable a balanced, non-blocking flow of control and processing power across applications and modules.

The parameters of an error-first callback functions should look like:

```javascript
function(err, data)
```

The first argument is an error object. If the response is successful `err` will be equal to `null`. Otherwise it will take the type of error.

Implementing an "error-first" callback:

```javascript
fs.readFile('/text.txt',
 function(err, data) {
   if (err) {
     console.log('error')
     console.log(err)
   } else {
     console.log(data);
   }
});
```

Note that the errors can be more specific:

```javascript
// ...
function(err, data) {
  if (err.fileNotFound) {
    console.log('wrong source')
  }
}
```


---

## Practice

Implement a simple error-first callback function that will log the `err` if there is an error. Otherwise, it should log the data:

```javascript
doSomethingWithCallback(???(???, ???) {
  ??? {
    console.log(err)
  } ??? {
    console.log(???)
  }
})
```

* function
* err
* data
* if(err)
* else
* err
* data
* er
* myData
* fn


---

## Revision

What are the parameters of an error-first callback function?

```javascript
function(???, ??) {
  // ...
}
```

* err
* data
* fileNotFound
* log
  &lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD
* null

=======

* null
  > > > > > > > master

