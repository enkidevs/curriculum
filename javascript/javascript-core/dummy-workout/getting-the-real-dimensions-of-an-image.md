---
author: catalin
levels:
  - basic
type: normal
category: tip
links:
  - '[davidwalsh.name](https://davidwalsh.name/get-image-dimensions){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Getting the *real* dimensions of an image


---

## Content

Find original dimensions of an image via `natural` properties:

```javascript
  this.naturalWidth;
  this.naturalHeight;
```

Keep in mind that these properties are *read-only*.
An `img`'s `onload()`event must be loaded first as you can't check the dimensions prior to loading it.[1]

```javasscript
myImg.addEventListener('load',
 function() {
	console.log('Width: ',
 this.naturalWidth);
	console.log('Height: ',
 this.naturalHeight);
});

```

The same result can be achieved by defining the `.onload` property of an image:

```javascript
myImg.onload = function() {
   console.log('Width: ',
 this.naturalWidth);
	console.log('Height: ',
 this.naturalHeight);
}
```


---

## Practice

Complete the load listener of `enkiImg` to get natural width and height:

```javascript
enkiImg.???('???',
 function() {
	console.log('Width: ',
 this.???);
	console.log('Height: ',
 this.???);
});

```

- addEventListener
- load
- naturalWidth
- naturalHeight
- height
- width
- onload


---

## Revision

Complete the load listener of `enkiImg` to get natural width and height:

```javasscript
enkiImg.???('???',
 function() {
	console.log('Width: ',
 this.???);
	console.log('Height: ',
 this.???);
});

```

- addEventListener
- load
- naturalWidth
- naturalHeight
- height
- width
- onLoad
- onload
 
