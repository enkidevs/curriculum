---
author: iikiriakidou
levels:
  - advanced
  - medium
type: normal
category: feature
tags:
  - javascript
links:
  - >-
    [10 Small Things You May Not Know About Javascript](http://samuli.hakoniemi.net/10-small-things-you-may-not-know-about-javascript/){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Labeling your loops


---

## Content

You can give a label to every nested iteration and use the `break` statement to exit them when some condition is fulfilled. 

```javascript
outerloop:  
for (var i=0; i<5; i++) {
  if (somethingIsTrue()) {  
    innerloop:  
    for (var j=0; j<5; j++) {  
      if (somethingElseIsTrue()) {  
        // Breaks the inner loop  
        break innerloop; 
      }
      if (somethingIsWrong()) {
        // Breaks the outer loop  
        break outerloop; 
      }
    }
  }   
}
```


---

## Revision

Break `enkiLoop`:

```javascript
enkiLoop:
for(var i=0; i<5; i++) {
 if(condition) {
   ??? ???
 }
}

```

- break
- enkiLoop
- loop
- yield
- stop
- enki
 
