---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.embed-media.0: 10

aspects:
  - introduction
  - workout

links:
  - '[w3schools on Height](https://www.w3schools.com/tags/att_img_height.asp){website}'
  - '[w3schools on width](https://www.w3schools.com/tags/att_img_width.asp){website}'
  - '[Documentation on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img){documentation}'

---
# Image Height & Width
---
## Content

In HTML the image size is set with the `height` and `width` attributes. The values in these attributes are in pixels.

Example:
```
<img src="some_image.svg"
    height="36"
    width="36">
```

It is important to specify both the `height` and `width` attributes of your image. This makes the browser reserve appropriate space for the image, even before the image is loaded. Having no `height` and `width` attributes can make the layout of your page change as the page and picture load.

Notes:
- Resizing images to be smaller in HTML is bad because it doesn't really change the image filesize. The image will just appear smaller, and the user will still download the image in its original filesize.
- Same goes for resizing the image to be bigger in HTML. The filesize is unchanged, plus the picture will appear pixelated and distorted.
- You can also use CSS to override the HTML `height` and `width` attributes, and this is considered a **best practice**.

---
## Practice

Fill in the appropriate attributes/values for creating an image in HTML?

`<??? ???="image.svg" ???="200" ???="200">`

+ img
+ src
+ height
+ width
- length
- size
- tall
- wide

---
## Revision

What are the appropriate attributes for setting the image size in HTML?

`<img src="image.svg" ___="200" ___="200">`

+ height
+ width
- length
- size
- tall
- wide

---
## Quiz

### The main reason height & width are useful attributes to adding to HTML image elements is:

* Browser reserves appropriate space for it.
* Will overwrite CSS height & width values.
* Prevents potential CSS mistakes with image size.
* Easiest way to set image size.
* Best way to manage responsive (resizable) images.
