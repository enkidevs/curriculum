---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  
---
# Images
---
## Content

In order to display an image in a webpage, the `<img>` element is used to tell the web page where to find the image and how to display it within the page.

![baby-elephant](https://img.enkipro.com/b79c0aacddcb4ab21ca44fb790a40675.png)

Insert Image: 
```html
<img
  src="elephant.png"
  alt="Cute baby elephant"
  height="180" width="320">
```

The `src` attribute specifies the URL path to the image. In the example above, the `elephant.png` image would need to be in the same directory as the web page. 

If the `elephant.png` image was in a subdirectory called `images`, then the path would look like this: 

```html
<img src="images/elephant.png">
```

The `alt` attribute is required for a few reasons: 

* Important for search engines to determine the purpose of the image.
* If the image doesn't load properly, the text will display in the web page helping describe the missing image.
* Screen readers for the visually impaired will read that text to the user. 

The most common image formats are `.gif`, `.png`, `.jpg` and `.svg`.

The `height` and `width` are useful for changing the size of the image within the web page, but aren't required. The values of the `height` and `width` are always in pixels, so no measurement is needed.

Without setting these sizes, the image will simply display at its original size. Typically, image sizes are set using CSS as it is easier to manage the image sizes for responsive websites, etc. 

The main reason it is important to set the image size is because those attributes will reserve space on the page for the images. Without the attributes, the browser won't know how much space to leave the image until it starts loading it - which can cause a jumpy loading effect as the web page downloads.

---
## Practice

Write the code to insert an image:

```html
<??? ???="???" 
     ???="Enki Logo">
```

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

If an image cannot load properly in a web page, what attribute will display text in its place?

???

Which one of these is not a common web image format:

???

If an image does not have an assigned height and width using HTML or CSS, how will the image display within a web page?

???

* `img src="image.jpg" alt="Image Description"`
* `alt`
* `.img`
* At its original image size.
* `image src="image.jpg" alt="Image Description"`
* `img alt="image.jpg" src="Image Description"`
* `desc`
* `.png`
* Will resize by default to 100px wide.

---
## Quiz

### How much do you know about HTML `<img>` element?

Why is assigning height & width attributes to an image size more useful than setting the image size in CSS?

???

* Page loads with assigned space for images preventing layout shifts.
* Using HTML height & width attributes is always better than using CSS sizing.
* When the image size needs to override the CSS size setting.
* When the height and width is different than the default image size.
 
