---
author: daniel_adelberg

levels:

  - basic

  - beginner

type: normal

category: tip

tags:

  - canvas


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial){website}'

notes: subtopic=browser-APIs

---

# Drawing with HTML5 `Canvas` API

---
## Content

With the `Canvas` object it is possible to draw simple shapes and graphics directly in the browser. 


```html
<!-- make a canvas element -->
<canvas id='canvas'></canvas>
```

`Canvas` supports drawing lines, rectangles, and more esoteric shapes, in addition to supporting images and animations. 

```javascript
var canvas = 
    document.getElementById("canvas");
// get the 2d context to draw in 2d
var context = canvas.getContext("2d");

// color and draw
context.fillStyle = "red";
context.fillRect(20,20,100,200)
```

---
## Practice

Create a 2d blue rectangle using `Canvas`:
```javascript
var canvas = 
    document.getElementById("canvas");
// get the 2d context to draw in 2d
var context = canvas.getContext("2d");

// color and draw
???.fillStyle = "???";
context.???(20,20,100,200)
```

* `context`
* `blue`
* `fillRect`
* `canvas`
* `rectangle`
* `drawRectangle`
* `document`

---
## Revision

Create a 2d blue rectangle using `Canvas`:
```javascript
var canvas = 
    document.getElementById("canvas");
// get the 2d context to draw in 2d
var context = canvas.getContext("2d");

// color and draw
???.fillStyle = "???";
context.???(20,20,100,200)
```

* `context`
* `blue`
* `fillRect`
* `canvas`
* `rectangle`
* `drawRectangle`
* `document`

 
