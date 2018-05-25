---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.0: 10
  web.syntax-html.1: 10
  web.embed-media.0: 10

aspects:
  - introduction
---
# Images
---
## Content

In HTML, images are defined with the `<img>` tag.

Example:
```
<img
  src="URL" alt="Image description"
  width="36px" height="36px">
```
or
```
<img
  src="sky.png"
  alt="Beautiful sunny sky"
  height="36px" width="36px">

```
The `src` attribute specifies the URL of the image.
If for some reason the picture cannot be loaded, the alt attribute specifies the text shown instead.

The most common image formats are `.gif`, `.png`, `.jpg` and `.svg`.


**Note: `.img` files are not image files. They are similar to `.iso` files and are used for keeping a backup copy of a disk in a single file, with information about that file.**


It is important to set the image width and height attributes. Setting those attributes reserves space on the page when it is loaded and prevents layout shifts.

If you do not set those attributes, the browser won't know how much space to leave the image until it starts loading it.
It is very important to either set both the width and height attributes or neither of them.

For some image formats, this isn't mandatory and won't cause problems. However, for some like the `.svg` which scales differently, it is important to specify both the height and width you want your picture to be. However, if no attribute is set, the image will load in its default values.

---
## Practice

Write the code to insert an image:

`<??? ???="???" ???="Enki Logo">`

* `img`
* `src`
* `images/logo.svg`
* `alt`
* `image`
* `a`
* `href`
* `photo`
* `images/logo.img`

---
## Revision

Which line of code will place an image into the HTML page?

???

* `<img src="image.jpg" alt="Image Description">`
* `<image src="image.jpg" alt="Image Description">`
* `<img href="image.jpg" alt="Image Description">`
* `<img alt="image.jpg" src="Image Description">`
* `<img alt="image.jpg" desc="Image Description">`

If an image cannot load properly in a web page, what attribute will display text in its place?

???

* `alt`
* `src`
* `href`
* `title`
* `desc`

Which of these are not a common web image format:

???

* `.img`
* `.png`
* .`svg`
* `.gif`
* `.jpg `

If an image does not have an assigned height and width using HTML or CSS, how will the image display within a web page?

???

* At its original image size.
* Will resize filling the container it is within.
* Will resize by default to 100px wide.
* It will only resize if the image is larger than the viewing area.

---
## Quiz

### How much do you know about HTML `<img>` element?

Why is assigning height & width attributes to an image size more useful than setting the image size in CSS?

???

* Page loads with assigned space for images preventing layout shifts.
* Using HTML height & width attributes is never better than CSS.
* When image size needs to override the CSS size setting.
* When the height and width is differen than the default image size.
