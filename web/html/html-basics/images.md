---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[HTML <img> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img){documentation}'
  
---

# Images

---
## Content

**Image** elements display pictures that are stored online. Image elements are unique because they are *self-enclosing elements*, which means that do not have a separate closing tag and are written as a single tag like this:

```html
<img src="logo.png" />
```
The image tag will appear in a webpage like this:  

![image-logo-enki](https://img.enkipro.com/0d7d7f3eddad7f5d27b006d0408081ed.png)

An image element receives its content using the source attribute, written as `src`. In this case, the image would be found in the same folder as the HTML document: 

```html
<img src="logo.png" />
```

For images located inside other folders:
```html
<img src="images/logo.png" />
```

For images located on other websites:
```html
<img
  src="http://website.com/logo.png"/>
```

By default, an image will display within a webpage at its original height and width, measured in pixels. The image size can be overridden by using the `width` and `height` attributes - measured in pixels (although it is common for images to be sized appropriately using height and width in CSS):

```html
<img src="logo.jpg"
  width="150" height="150" />
```

Another important attribute is `alt`, which provides a text description in the browser in case the image doesn't load properly, as well as helping search engines and screen readers for visually disabled understand the meaning of the image. 

```html
<img src="images/cat.jpg"
  alt="Mufasa sitting on top
       of Pride Rock, looking 
       majestic." />
```

---
## Revision

Complete the following snippet such that it contains valid code:
```html
<img ???="images/puppy.jpg"/>
```

* src
* href
* link
* source
 
