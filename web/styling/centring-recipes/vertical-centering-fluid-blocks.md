---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern

aspects:
  - introduction
  - workout
  - deep

links:

  - '[CSS Vertical Centering](http://davidwalsh.name/css-vertical-center){website}'
  - '[47 CSS Tips & Tricks](http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/){website}'

---

# Vertical centering fluid blocks

---
## Content

To vertically center blocks of unknown height:

```css
.elem {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
}
```
This is how the properties would position the element:

![HtmlToSvg.svg](https://img.enkipro.com/26ef6523907e513af1de985571a360cf.png)

The `top` property relates to the size of `.elem`'s parent. Setting it to 50% means the top of `.elem` will be in the middle. The `transform` property relates to the size of `.elem` itself.   

Therefore moving it up by 50% of its height, means the middle of `.elem` will be in the middle of its parent element.

---
## Revision

What does the following CSS code snippet do? ???

```css
#class {
   position: absolute;
   top: 50%;
   transform: translateY(-50%);
}
```


* Vertically centres a fluid block.
* Vertically flips a fluid block.
* Sets a blocks top side to be 50% of the way up the document.
* Sets the blocks position to absolute and flips it vertically.
