---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:
  - introduction

inAlgoPool: false

links:
  - '[Scrimba CSS Position Property](https://scrimba.com/p/pWvwCg/c2vEnHR){website}'
  - '[MDN Docs on Positioning](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Positioning){documentation}'

---

# Positioning Elements

---
## Content

Now that you can tell how much space an element takes when rendered based on its properties, the next step is to position it in the page layout. Three *basic* ways to position elements are: *relative positioning*, *absolute positioning* and *floating* them.

By default every element has a `position` value of `static`, which places it in the normal flow of the page. However, the static element *does not* accept any box offset properties: `top`, `bottom`, `left`, `right`. To take advantage of the offsets, one must overwrite the `static` value with either `relative` or `absolute`.

### Relative positioning

The `relative` value of the `position` property places elements in the normal flow of the page, while allowing access to the box offsets:
```css
div{
  width:200px;
  height: 100px;
}
#relpos{
  position: relative;
  left: 15px;
  top:15px;
}
```
And the HTML:
```html
<div> Static</div>
<div id="relpos">Relative</div>
<div> Static</div>
```


![min.svg](https://img.enkipro.com/02de8ce36c2166210b9b6891b3f05195.png)

The difference between `margin` and `padding` and *offsets* is that instead of pushing the surrounding elements, *box offsets* will make them overlap.

### Absolute positioning

On the other hand, the `absolute` value of `position` will make the element appear outside of the normal flow of the page.

Additionally, *box offsets* move them in relation to the first `non-static` positioned parent. In case such a parent does not exist, the element will use the `<body>` as reference.
```css
#container{
  background-color:white;
  position:relative;
#relpos{
  position: absolute;
  left: 20px;
  top:20px;
}
```

![absmin.svg](https://img.enkipro.com/9cb21bc6ef841c54284d317b70f5d367.png)

The third basic way of position elements, *floating*, will be covered in the next insight.

---
## Practice

An element with `position: absolute` is positioned in relation to ???.


* its first non-static ancestor.
* its first relative positioned ancestor.
* its first absolute positioned ancestor.
* its parent.

---
## Revision

For which value of `position` you cannot use box offsets?

???

* Static
* Relative
* Absolute
