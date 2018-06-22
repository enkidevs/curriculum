---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.embed-media.0: 10

aspects:
  - introduction
  - workout
  - obscura

links:
  - '[A walkthrough on w3schools](https://www.w3schools.com/tags/att_area_coords.asp){website}'
  - '[Documentation on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/map){documentation}'
  - '[An example on w3schools](https://www.w3schools.com/tags/att_img_usemap.asp){website}'
  - '[Official docs on w3.org](https://dev.w3.org/html5/spec-preview/image-maps.html){documentation}'
---
# Image Map
---
## Content


In HTML, the `<map>` element is used for creating an image map. An image map is a clickable area used alongside the `<area>` attribute. With the `<map>` element you can create hyperlinks on selected portions of an image.

The clickable area has 3 available shapes.

These are:
  - rect (Rectangle)
  - circle (Circle)
  - poly (Polygon)

The coordinates for each shape differ and are mandatory.
They are as follows:

rect: shape="x1,y1,x2,y2"
  - left corner = `x1`
  - top corner = `y1`
  - right corner = `x2`
  - bottom corner = `y2`

circle: shape="x,y,r"
  - x/y values specify the circle center
  - r specifies the radius of the circle

poly: shape="x1,y1,x2,y2,x3,y3...xn,yn"
  - (x1,y1),(x2,y2).. pairs specify the coordinates of an edge for the polygon.
  - First and last coordinate pairs must be the same for the polygon to close.
  - If the first and last coordinate differ, the browsers will add the last coordinate pair.


**Important notes: Each shape has to have a certain number of values inside the `coords` attribute for it to work.**
  **- Circle: Exactly 3**
  **- Rectangle: Exactly 4**
  **- Polygon: Any even number of values with the minimum number of 6 values**
  **- (0,0) are the top left corner coordinates of an area.**
  **- `coords` attribute is specified in pixels.**


Example:
```
<map name="objects">
  <area shape="rect" coords="10,50,82,126"
    alt="" href="object1.htm">
  <area shape="circle" coords="90,58,3"
    alt="" href="object2.htm"
      target="_blank">
  <area shape="poly"
    coords="14,24,12,32,25,41,34,33,32,25"
      alt="" href="object3.htm">
</map>

<img usemap="#objects" src="#" alt="">
```

Breaking down the example above:

Specifies the start tag.
```
<map>
```

Specifies the name of our map.
```
name="objects"
```

Specifies the shapes of our clickable area.
```
<area shape="rect"
```

Specifies the coordinates for our shape.
```
coords="10,50,82,126"
```
In this case a rectangle:
  - left corner = `10`
  - top corner = `50`
  - right corner = `82`
  - bottom corner = `126`


Specifies the alternate information.
```
alt=""
```

Specifies the URL.
```
href="object1.htm">
```

Specifies the end tag.
```
</map>
```

Creates a relationship between the `<img>` and `<map>` elements.
```
usemap="#objects"
```

Specifies the link for the `<img>`, in this case an empty link.
```
src="#"
```

Specifies the alternate information.
```
alt="">
```

Usage:
For instance, you have an image of a dog and a cat alongside each other. You want the portion of the picture with the dog to open one website and the other portion of the picture with the cat to open a different website. You would use the `<map>` attribute and it's `shape` properties to establish hyperlinks on desired parts of the image.


**Note:**
 - **Both the start tag and end tags are required when using the `<map>` attribute.**
 - **When using `usemap`, the value in `usemap="#name"` has to be identical to your `map="name"` value.**

---
## Practice

Add map elements to create clickable areas within a single image.

```
<map name="objects">
  <area shape="???" coords="10,50,82,126"
    alt="" href="object1.htm">
  <area shape="???" coords="90,58,3"
    alt="" href="object2.htm"
      target="???">
  <area shape="???"
    coords="14,24,12,32,25,41,34,33,32,25"
      alt="" href="object3.htm">
</map>

<img ???="#objects" src="#" alt="">
```

* rect
* circle
* _blank
* poly
* usemap
* rectangle
* polygon
* pentagon
* square
* mapclick

---
## Revision

When using the map element to create clickable areas within a single image, what are the available shapes?

```
<map name="imagemap">
  <area shape="_____"
    coords="" alt="" href="page.htm">
</map>

<img usemap="#imagemap"
  src="#" alt="">
```

+ rect
+ circle
+ poly
- rectangle
- polygon
- square
- triangle
- oval

---
## Quiz

### How much do you know about create clickable image maps?

Place the shape value within the appropriate location to create the proper code.

```
<map name="objects">
 <area shape="???"
   coords="10,50,82,126"
   alt="" href="object.htm">
</map>

<img usemap="#objects" src="#" alt="">
```

* rect
* circle
* poly
* rectangle
* polygon
* pentagon
* square
