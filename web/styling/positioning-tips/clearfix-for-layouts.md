---
author: nene

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern

tags:

  - layout


links:

  - '[fuseinteractive.ca](http://fuseinteractive.ca/blog/understanding-humble-clearfix#.VaQqCZNViko){website}'


---

# Clearfix for layouts

---
## Content

Use `clearfix` to make an element automatically clear its child elements, so there would be no need for additional markup :

```
.clearfix:after {
  content: "";
  clear: both;
}
```
This hack is useful in cases like where `float` is used to arrange elements one after the other. Because of how `floats` work (they make other elements wrap around them), their container won't resize to surround them.

Here is an example, where the left child has `float:left` property, and the right one, `float:right`:

![newclearfix.svg](%3Csvg%20version%3D%221.2%22%20baseProfile%3D%22tiny%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20height%3D%22auto%22%20viewBox%3D%220%200%20800%20300%22%3E%0A%20%20%3Cpath%20fill%3D%22%23596294%22%20stroke%3D%22%23000%22%20stroke-width%3D%22.25%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M0%200h800v300H0z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23000%22%20stroke-width%3D%22.25%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M44%2015h350v70H44z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22%239FA6D4%22%20stroke%3D%22%23000%22%20stroke-width%3D%22.25%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M62%2044h50v150H62zM250%2044h90v90h-90z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23000%22%20stroke-width%3D%22.25%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M410%2015h350v210H410z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22%239FA6D4%22%20stroke%3D%22%23000%22%20stroke-width%3D%22.25%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M430%2044h50v150h-50zM620%2044h90v90h-90z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22none%22%20d%3D%22M87%2028h106.283v17.277H87z%22%2F%3E%0A%20%20%3Ctext%20x%3D%22150%22%20y%3D%2242%22%20font-family%3D%22'Roboto-Regular'%22%20font-size%3D%2230%22%3E%0A%20%20%20%20no%20clearfix%0A%20%20%3C%2Ftext%3E%0A%20%20%3Cpath%20fill%3D%22none%22%20d%3D%22M430%2028.936h73.299V45.69H430z%22%2F%3E%0A%20%20%3Ctext%20x%3D%22530%22%20y%3D%2242%22%20font-family%3D%22'Roboto-Regular'%22%20font-size%3D%2230%22%3E%0A%20%20%20%20clearfix%0A%20%20%3C%2Ftext%3E%0A%3C%2Fsvg%3E)

All you have to do is add `clearfix` class to the container and the floating element:
```html
<div class="clearfix">
   <div style="float: left;"
   class="clearfix">Sidebar</div>
</div>
```

The hack forces the content after the floats to render below them (`clear` property specifies on which side of the element floating elements are not allowed).

Now, the parent will resize itself to surround the floating children.

---
## Practice

What does `clear` property do?

???

* It doesn’t allow float elements on specified sides.
* It doesn’t allow any type of elements on specified sides.
* It allows float elements on specified sides.

---
## Revision

What does the following CSS code do, when you have a floated image inside an element smaller than said image?

```css
.clearfix {
   overflow: auto;
}
```
???

* Alters the elements size so it contains the image.
* Alters the images size so it fits inside the element.
* Hides the element.
* Hides the image.

