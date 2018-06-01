---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

links:

  - '[davidwalsh.name](https://davidwalsh.name/document-readystate){website}'

---
# Check if a document is done loading

---
## Content

Check if a document is loaded in your page via the `document.readyState` property.

Basic check:
```javascript
if(document.readyState === 'complete') {
    // document is loaded
}

```

Repeating this check at a certain interval :

```javascript
var interval = setInterval(function() {
  if(document.readyState === 'complete') {
    clearInterval(interval);
    // document is loaded
  }    
}, 100);
```

---
## Practice

Complete the following code to check if a document has finished loading at a specified interval: 
```
var interval = ???(function(){ 
  if(document.??? === 'complete'){
      clearInterval(interval);
      // document loaded! 
  } 
}, 220); 
```
* setInterval
* readyState 
* newInterval
* loadingState
* documentState

---
## Revision

Check if a document is loaded:
```javascript
if (document.??? === 'complete') {
  //document is loaded
}
```

* readyState
* loaded
* isLoaded
* state