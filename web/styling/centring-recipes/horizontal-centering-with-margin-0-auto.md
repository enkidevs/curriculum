---
author: Mathieu
type: normal
category: how-to
links:
  - >-
    [Horizontally Centering a
    <div>](http://stackoverflow.com/questions/618097/how-do-you-easily-horizontally-center-a-div-using-css){website}
  - >-
    [47 CSS Tips &
    Tricks](http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Horizontal centering with margin: 0 auto;


---

## Content

To horizontally center **block elements** of a known width:

```css
#horizontal-center {
  width: 960px;
  margin: 0 auto;
}
```

The 2 value shorthand notation of `margin` targets `top/bottom-margins` and `left/right-margins`. Because the element is **block**, it occupies the whole width of the container.

The element also has a known width, so the browser can calculate the container's unused width. The `auto` value tells the browser to equally distantiate the block element from the left and the right margin, which effectively centers it horizontally.


---

## Revision

What does the following piece of CSS code do? ???

```css
#id {
   width: 960px;
   margin: 0 auto;
}
```

- Horizontally centres a block element with a known width.
- Gets rid of the margin.
- Vertically centres a block element with a known width.
- Horizontally centres a block element with an unknown width.
