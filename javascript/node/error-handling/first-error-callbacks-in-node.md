# First-error callbacks in **Node**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to

links:

  - >-
    [fredkschott.com](http://fredkschott.com/post/2014/03/understanding-error-first-callbacks-in-node-js/){website}

---
## Content

The `"error-first"` callback (also `"errorback"` or `"err-back"`) has become the standard protocol for **Node** as to enable a balanced, non-blocking flow of control and processing power across applications and modules.

Rule *one* rule of defining `"error-first"` callback:

```javascript
function(err, data)
```
The first argument of the callback is an error object. If the response is successful  
`err` will be equal to `null`. Otherwise it will take the type of error.

Implementing a `"error-first"` callback:
```javascript
fs.readFile('/text.txt',
 function(err, data) {
  console.log(data);
});

```

Make a simple error check:
```javascript
if(err)
```

Make a particular error check:
```javascript
 if(err.fileNotFound)
```

---
## Revision

What are the arguments of a `error-first` callback function?
```javascript
function(???, ??) { }
```
*`err`
*`data`
*`fileNotFound`
*`log`
*`null`
