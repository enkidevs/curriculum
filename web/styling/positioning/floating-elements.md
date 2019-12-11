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
  - '[Scrimba CSS Float & Clear](https://scrimba.com/p/pWvwCg/cD6KWHq){website}'
  - '[MDN Docs on Float](https://developer.mozilla.org/en-US/docs/Web/CSS/float){documentation}'

---

# Floating Elements

---
## Content

Another way to position elements on page is with `floats`. This property allows elements to be positioned to the left or right side of the parent element. All other elements will flow around the floated element.

One use-case is floating an image to the side of a block of text, as the text will surround the image:
```css
#imageleft{
  float: left;
  width: 150px;
  height: 150px;
}
#imageright{
  float: right;
  width: 150px;
  height: 150px;
p{
  font-size: 30px;
  font-color: #ffffff;
}
```

![min.svg](https://img.enkipro.com/1deb6d42e45d2bd90fc68736575f71c0.png)

It can also be used to align elements to the side of the last one:
```css
.elem{
  width: 120px;
  height: 100px;
  margin: 15px;
}
.leftelem{
  float: left;
}
.rightelem{
  float: right;
}

```
And the HTML:
```html
<div class="elem leftelem">Left</div>
<div class="elem leftelem">Left</div>
<div class="elem leftelem">Left</div>
<div class="elem rightelem"
  id="first-right-elem">Right</div>
<div class="elem rightelem">Right</div>
<div class="elem rightelem">Right</div>
```

![woclearmin.svg](https://img.enkipro.com/4755d5867013fb92808d58f7f83b80dc.png)

However, this might not be the layout we were looking to achieve. As there is space left for 2 more rectangle on the first line, `float:right` will position them in the empty space.

To push all right floating elements on the next line, we have to use a property called `clear`. This property doesn't allow any `float` elements to the side specified by its value. The three most used values are: `left`, `right` and `both`.

Because we want the first right element to start on a new line, we have to `clear` floating elements to the left of it:
```css
#first-right-elem{
  clear:left;
}
```
And the result will be:

![clearmin.svg](https://img.enkipro.com/b84c371f37e5eb86d96a9cb45e41a52e.png)

---
## Revision

Text ??? a floated element.

* surrounds
* pushes
* overlaps
* underlaps
