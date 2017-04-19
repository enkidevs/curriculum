# Relative CSS properties
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

Alongside absolute values, CSS allows the use of relative ones: *percentages*, *ems*, and *vw* and *vh*, which scale with container's properties.

**Percentages** are represented using `%` notation. A percentage depends on the size of the container or parent element:
```css
#rect{
 width: 20%;
 height: 100px;
}
```
The rectangle above will have `100px height` on every device, but its width will depend on the container's width. If the parent's width is `500px`, the rectangle would become a square (20% of 500px is 100px).

**Em** is a bit trickier. `1em` is equal to the element's **font size**:
```css
div{
  font-size: 16px;
  height: 10em;
}
```
In this case, `1em` equals `16px`. Hence, the `div` above is *160px* in height.

Consider another example:
```html
<head>
  <style>
  .container{
    font-size: 20px;
  }
  #elem{
    width: 10em;
    height: 15em;
  }
  </style>
</head>
<body>
  <div class="container">
    <div id="elem">
    </div>
  </div>
</body>
```
As there is no `font-size` specified for the `elem` class, *em* looks for the closest ancestor with that property. For *#elem*, `1em` represents `20px`. Therefore, it would be *200px in width and 300px in height*.

If no ancestor has a *font size* defined, the browser would use its default value, which is often *16px*.

The last relative values are **vw(viewport-width)** and **vh(viewport-height)**. The viewport represents the browser windows size (windows object). If the window is `2000x1000` and:
```css
p {
  font-size: 2vh;
}
```
Every *p*'s font-size would be *2/100 * 1000 = 20px*. As the browser window gets resized, the font-size would change accordingly. `vmin` and `vmax` are also available: they represent the smallest value between *1vh* and *1vw*, and the largest, respectively.

Relative values are a great way of making pages responsive.

---
## Practice

For the following CSS code:
```
.container{
  font-size: 20px;
  width: 500px;
  height: 300px;
}
```
And HTML:
```html
<div class="container">
  <div></div>
</div>
```
Which of the following values is not equivalent to a `width` of `200px` for the inner `div`?

???
* width: 20em;
* width: 40%;
* width: 200px;
* width: 10em;

---
## Revision

In CSS, `width: 10%` is equal to

???
* 10% of parent's width
* 100px
* 10% of parent's font-size
* 10% of body's width
