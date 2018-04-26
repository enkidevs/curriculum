---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Positioning){documentation}'


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


![min.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20360%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v350H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M33%2013h200v110H33V13M33%20243h200v110H33V243%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%2296%22%20y=%2274%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3EStatic%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%2296%22%20y=%22304%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3EStatic%3C/text%3E%3Cpath%20d=%22M53%20148h200v110H53V148%22%20fill=%22#3ed715%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%2299.5%22%20y=%22209%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ERelative%3C/text%3E%3C/g%3E%3C/svg%3E)

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


![absmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M108%2058h600v200H108V58%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22508%22%20y=%22161%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3ERelative%3C/text%3E%3Cpath%20d=%22M128%2078h200v110H128V78%22%20fill=%22#3ed715%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22170.5%22%20y=%22139%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3EAbsolute%3C/text%3E%3C/g%3E%3C/svg%3E)

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

