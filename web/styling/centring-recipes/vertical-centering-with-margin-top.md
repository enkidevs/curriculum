---
author: Mathieu

levels:

  - basic

  - beginner

type: normal

category: how to

aspects:
  - introduction
  - workout

links:

  - '[CSS Vertical Centering](http://davidwalsh.name/css-vertical-center){website}'
  - '[47 CSS Tips & Tricks](http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/){website}'
  
---

# Vertical centering with `margin-top`

---
## Content

To vertically center block elements of known height:


```css
.vertical-center {
  position: absolute;
  top: 50%;
  height: 400px;
  margin-top: -200px;
}
```
You can check out the evolution here:

![HtmlToSvg.svg](https://img.enkipro.com/3179ba1e9d0b35a33abec9b3d20ce4d5.png)

`top: 50%` will put the top of the element in the center of its parent. `margin-top: -200px` will make the content of the element start 200px before its top. By combining both, we manage to center an element of known height.

---
## Revision

What does the following CSS code snippet do? ???

```css
#class {
   position: absolute;
   top: 50%;
   height: 400px;
   margin-top: -200px;
}
```

* Vertically centres a block element with a known height.
* Vertically centres a block element with unknown height.
* Horizontally centres a block element with a known height.
* Horizontally centres a block element with unknown height.
