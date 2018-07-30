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

The HTML `<map>` element is used for creating links on selected portions of an image when used alongside the `<area>` attribute. 

![View CodePen](https://codepen.io/enkidevs/pen/ajbxbX)

The clickable area has 3 available shapes:
  - `rect` (Rectangle)
  - `circle` (Circle)
  - `poly` (Polygon)

The coordinates for each shape differ and are mandatory. They are as follows:

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


**Important notes:** Each shape has to have a certain number of values inside the `coords` attribute for it to work.
  **- Circle:** Exactly 3
  **- Rectangle:** Exactly 4
  **- Polygon:** Any even number of values with the minimum number of 6 values
  **- (0,0)** are the top left corner coordinates of an area.
  **-** `coords` attribute is specified in pixels.

 Finding the coordinates can be tricky and tedious. Luckily, there are free services like [http://www.image-maps.com/](http://www.image-maps.com/) to make this much easier! 


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

* rect, circle, poly
* rectangle, polygon, square
* triangle, oval, square
* rect, square, poly, oval

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
