---
author: 'shoutmatt'

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction

links:

---
# Image Links
---
## Content

In order to add a link onto an image, simply place the link `<a> </a>` element around any image element `<img>`:

```html
<a href="http://enki.com">
  <img
    src="icon.png"
    alt="Click to visit Enki"
  >
</a>
```

Actually, anything added within a link element in HTML5 will be linked - this includes any blocks of text, any number of images, etc. But just because anything can be linked, doesn't mean it all should. Best practices typically encourage all elements to be individually linked. But, linking both an image and text would be written like this: 

```html
<a href="http://enki.com">
  <img
    src="icon.svg"
    alt="Click Here"
  >
  <p>Link to Enki</p>
</a>
```

![link-text-and-image](https://img.enkipro.com/0cd818e0c946a0f6ffd79981cc02bd4a.png)

---
## Practice

Create a linked image:

```html
<??? ???="???">
  <???
    ???="???"
    ???="Click Here"
  >
<???>
```

* `a`
* `href`
* `http://enki.com`
* `img`
* `src`
* `icon.svg`
* `alt`
* `/a`
* `target`
* `_blank`
* `link`

---
## Revision

What is the correct HTML for creating a linked image?

???

* `<a href="http://enkipro.com"><img src="icon.svg" alt="Click Here"></a>`
* `<a href="http://enkipro.com"><img href="icon.svg" alt="Click Here"></a>`
* `<a href="http://enkipro.com"><img src="icon.svg" alt="Click Here">`
* `<a url="http://enkipro.com"><img src="icon.svg"></a>`
* `<img src="icon.svg"><a>http://enkipro.com</a></img>`
* `<a link="http://enkipro.com"><img src="icon.svg" alt="Click Here"></a>`

---
## Quiz

### How much do you know about links and images?

Which is a true statement?

```html
<a href="http://www.site.com">
  <p>These are my favorite places:</p>
  <img src="mountain.jpg" alt="Snowy Mountain">
  <img src="beach.jpg" alt="Sandy Beach">
</a>
```

* The text and images will be linked to the same site.
* The text and images will not link to the site this way.
* The text and images will link, but this is not valid HTML.
* Only the paragraph will be linked to the site.
 
