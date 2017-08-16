# Images
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

---
## Content

**Images** are *self-enclosing elements*, which display external pictures.They are delimited by the `<img/>` tag.

A self-enclosing element receives its content from attributes within a single tag. The attribute specifying the image source is `src`:
```html
<img src="logo.jpg"/>
```
This works if the image is found in the same folder as the HTML document. For images located inside other folders:
```html
<img src="resources/logo.jpg" />
```
Or external sources:
```html
<img
  src="https://remotehosting.com/logo.jpg"/>
```
By default, if the image fits inside the screen, it will be displayed depending on its resolution. A *600×400* image's width will be *600* and its height will be *400*.

If its resolution is bigger than the screen, the browser will resize it. Custom dimensions can be specified using `width` and `height` attributes:
```html
<img src="logo.jpg"
  width="150" height="150" />
```
Another useful attribute is `alt`, which fills the image with a placeholder in case it was not found or it is still loading:
```html
<img src="html/logo.jpg"
  alt="This should be the logo" />
```
---
## Revision

Complete the following snippet such that it contains valid code:
```html
<img ???="example.com/path/dog.jpg"/>
```

* src
* href
* link
* source
