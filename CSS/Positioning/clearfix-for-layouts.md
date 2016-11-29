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

parent: >-
  use-float-to-allow-an-element-to-be-placed-to-the-left-or-right-of-the-container

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

![newclearfix.svg](%3C?xml%20version=%221.0%22%20encoding=%22utf-8%22?%3E%0D%0A%3C!--%20Generator:%20Adobe%20Illustrator%2016.0.0,%20SVG%20Export%20Plug-In%20.%20SVG%20Version:%206.00%20Build%200%29%20%20--%3E%0D%0A%3Csvg%20version=%221.2%22%20baseProfile=%22tiny%22%20id=%22Layer_1%22%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%0D%0A%09%20x=%220px%22%20y=%220px%22%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%20xml:space=%22preserve%22%3E%0D%0A%3Crect%20fill=%22#596294%22%20stroke=%22#000000%22%20stroke-width=%220.25%22%20stroke-miterlimit=%2210%22%20width=%22800%22%20height=%22300%22/%3E%0D%0A%3Crect%20x=%2244%22%20y=%2215%22%20fill=%22#FFFFFF%22%20stroke=%22#000000%22%20stroke-width=%220.25%22%20stroke-miterlimit=%2210%22%20width=%22350%22%20height=%2270%22/%3E%0D%0A%3Crect%20x=%2262%22%20y=%2244%22%20fill=%22#9FA6D4%22%20stroke=%22#000000%22%20stroke-width=%220.25%22%20stroke-miterlimit=%2210%22%20width=%2250%22%20height=%22150%22/%3E%0D%0A%3Crect%20x=%22250%22%20y=%2244%22%20fill=%22#9FA6D4%22%20stroke=%22#000000%22%20stroke-width=%220.25%22%20stroke-miterlimit=%2210%22%20width=%2290%22%20height=%2290%22/%3E%0D%0A%3Crect%20x=%22410%22%20y=%2215%22%20fill=%22#FFFFFF%22%20stroke=%22#000000%22%20stroke-width=%220.25%22%20stroke-miterlimit=%2210%22%20width=%22350%22%20height=%22210%22/%3E%0D%0A%3Crect%20x=%22430%22%20y=%2244%22%20fill=%22#9FA6D4%22%20stroke=%22#000000%22%20stroke-width=%220.25%22%20stroke-miterlimit=%2210%22%20width=%2250%22%20height=%22150%22/%3E%0D%0A%3Crect%20x=%22620%22%20y=%2244%22%20fill=%22#9FA6D4%22%20stroke=%22#000000%22%20stroke-width=%220.25%22%20stroke-miterlimit=%2210%22%20width=%2290%22%20height=%2290%22/%3E%0D%0A%3Crect%20x=%2287%22%20y=%2228%22%20fill=%22none%22%20width=%22106.283%22%20height=%2217.277%22/%3E%0D%0A%3Ctext%20x=%22150%22%20y=%2242%22%20font-family=%22'Roboto-Regular'%22%20font-size=%2230%22%3Eno%20clearfix%3C/text%3E%0D%0A%3Crect%20x=%22430%22%20y=%2228.936%22%20fill=%22none%22%20width=%2273.299%22%20height=%2216.754%22/%3E%0D%0A%3Ctext%20x=%22530%22%20y=%2242%22%20font-family=%22'Roboto-Regular'%22%20font-size=%2230%22%3Eclearfix%3C/text%3E%0D%0A%3C/svg%3E%0D%0A)

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