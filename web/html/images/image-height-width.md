---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout

links:
  - '[HTML <img> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img){documentation}'

---
# Image Height & Width
---
## Content

When working with image sizes, this can seem easy to start with, but it is a little tricky today because of responsive websites. Traditionally, the image size in HTML is set with the `height` and `width` attributes, both values set in pixels.

Example:
```html
<img src="logo.svg"
    height="80"
    width="140">
```

Browsers render your page faster and more cleanly (aka the browser will reserve appropriate space for the image, even before the image is loaded preventing loading images from forcing changes in the page layout during loading) when the height and width are used, but in order for these images to be responsive, their height and width will be overridden using CSS.

```html
<img src="logo.svg"
    height="80"
    width="140">
```

```css
img {
    width: 100%;
    height: auto;
}
```
[View CodePen](https://codepen.io/enkidevs/pen/GBRLYE)

---
## Practice

Fill in the appropriate attributes/values for creating an image in HTML with dimensions 300x200.

`<??? ???="image.svg" height="200" ???="300">`

* img
* src
* width
* length
* size
* tall
* wide

---
## Revision

What are the appropriate attributes for setting the image size in HTML? (Please provide the two words/answers alphabetically in order.)

`<img src="image.svg" ___="200" ___="200">`

* height
* width
* length
* size
* tall
* wide

---
## Quiz

### The main reason height & width are useful attributes to adding to HTML image elements is:

* Browser reserves appropriate space for it.
* Will overwrite CSS height & width values.
* Prevents potential CSS mistakes with image size.
* Easiest way to set image size.
* Best way to manage responsive (resizable) images.
