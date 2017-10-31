# Clearfix for layouts
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

  - >-
    [fuseinteractive.ca](http://fuseinteractive.ca/blog/understanding-humble-clearfix#.VaQqCZNViko){website}

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

![newclearfix.svg](%0D%0A%3Csvg+version%3D%221.2%22+baseProfile%3D%22tiny%22+xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22+height%3D%22auto%22+viewBox%3D%220+0+800+300%22%3E%0D%0A++%3Cpath+fill%3D%22%23596294%22+stroke%3D%22%23000%22+stroke-width%3D%22.25%22+stroke-miterlimit%3D%2210%22+d%3D%22M0+0h800v300H0z%22%2F%3E%0D%0A++%3Cpath+fill%3D%22%23FFF%22+stroke%3D%22%23000%22+stroke-width%3D%22.25%22+stroke-miterlimit%3D%2210%22+d%3D%22M44+15h350v70H44z%22%2F%3E%0D%0A++%3Cpath+fill%3D%22%239FA6D4%22+stroke%3D%22%23000%22+stroke-width%3D%22.25%22+stroke-miterlimit%3D%2210%22+d%3D%22M62+44h50v150H62zM250+44h90v90h-90z%22%2F%3E%0D%0A++%3Cpath+fill%3D%22%23FFF%22+stroke%3D%22%23000%22+stroke-width%3D%22.25%22+stroke-miterlimit%3D%2210%22+d%3D%22M410+15h350v210H410z%22%2F%3E%0D%0A++%3Cpath+fill%3D%22%239FA6D4%22+stroke%3D%22%23000%22+stroke-width%3D%22.25%22+stroke-miterlimit%3D%2210%22+d%3D%22M430+44h50v150h-50zM620+44h90v90h-90z%22%2F%3E%0D%0A++%3Cpath+fill%3D%22none%22+d%3D%22M87+28h106.283v17.277H87z%22%2F%3E%0D%0A++%3Ctext+x%3D%22150%22+y%3D%2242%22+font-family%3D%22%27Roboto-Regular%27%22+font-size%3D%2230%22%3E%0D%0A++++no+clearfix%0D%0A++%3C%2Ftext%3E%0D%0A++%3Cpath+fill%3D%22none%22+d%3D%22M430+28.936h73.299V45.69H430z%22%2F%3E%0D%0A++%3Ctext+x%3D%22530%22+y%3D%2242%22+font-family%3D%22%27Roboto-Regular%27%22+font-size%3D%2230%22%3E%0D%0A++++clearfix%0D%0A++%3C%2Ftext%3E%0D%0A%3C%2Fsvg%3E%0D%0A)

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
*It doesn’t allow float elements on specified sides.
*It doesn’t allow any type of elements on specified sides.
*It allows float elements on specified sides.

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
