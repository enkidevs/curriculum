---
author: oj14henry
type: normal
category: feature
tags:
  - border-radius
links:
  - >-
    [Tutorial on Border
    Radius](http://www.techonthenet.com/css/properties/border_radius.php){article}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Border-radius property can use slash syntax(/)


---

## Content

```css
.box {
/* top-left, top-right, bottom-right
   bottom-left */
  border-radius: 35px 25px 30px 20px/
                 35px 25px 15px 30px;
}
```

The values before the slash set the horizontal radius, while the values after the slash set the vertical radius. This way, corners would be elliptical instead of circular.

You can see how those values will affect the corners in this image:

![HtmlToSvg.svg](https://img.enkipro.com/49f36abe3f726a0e31bc7e3cdbadcce5.png)

The first shape has:

```plain-text
border-radius: 10px 20px 30px 40px/
               80px 70px 60px 50px
```

While the second has:

```plain-text
border-radius: 80px 70px 60px 50px/
               10px 20px 30px 40px
```


---

## Revision

What syntax can be used with the `border-radius` property for setting the horizontal and vertical radius'? ???

- slash syntax (/)
- equal syntax (=)
- double slash syntax (//)
