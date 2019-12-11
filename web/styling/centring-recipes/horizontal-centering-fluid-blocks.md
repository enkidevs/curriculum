---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern

aspects:
  - workout
  - deep

links:

  - '[Horizontally Centering a <div>](http://stackoverflow.com/questions/618097/how-do-you-easily-horizontally-center-a-div-using-css){website}'
  - '[47 CSS Tips & Tricks](http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/){website}'
  
---

# Horizontal centering fluid blocks

---
## Content

To horizontally center blocks of unknown width:

```css
#horizontal-center {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}
```

The `left` property relates to the size of the parent so the left of child will be in the middle. The `transform` property relates to the child size. Hence it will be centered.

You can check out the evolution here:


![HtmlToSvg.svg](https://img.enkipro.com/ff255695f9032f0cff8fb0417b180705.png)

---
## Revision

What does the following CSS code do? ???

```css
#class {
   position: absolute;
   left: 50%;
   transform: translateX(-50%);
}
```

* Horizontally centres a block with an unknown width.
* Horizontally flips a block with an unknown width.
* Sets a blocks left side to be 50% across the document.
* Sets the blocks position to absolute and flips it horizontally.
