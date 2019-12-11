---
author: mihaiberq

levels:
  - beginner

type: normal

aspects:
  - introduction
  - workout
  - deep

category: must-know

inAlgoPool: false

links:
  - '[Scrimba CSS The Box Model](https://scrimba.com/p/pWvwCg/cnm3RSZ){website}'
  - '[Box Sizing](https://css-tricks.com/box-sizing/){website}'
  - '[MDN Docs on Box Sizing](https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing){documentation}'

---

# The `box-sizing` Property

---
## Content

In the previous examples, the size of the containing box size was always the sum of horizontal and vertical dimensions. However, as you might have noticed, it gets trickier and trickier to properly calculate the `width` and `height` as you nest elements.

This is where `box-sizing` comes in. The property may be changed to set the outer limit of the element to a specific enclosing property: `content`, `padding`, or `border`. *By default*, `box-sizing` is set to be  `content-box`.

That means the `width` and `height` specified for the element are not its final sizes, and additional `padding`, `border` or `margin` will push its border.

The next possible value is `padding-box`. As the name states, the new limit is set to enclose the `padding` as well. In this case, the `content` will be shrunk to make room for the padding:
```css
/* the final width of the box will be 500px
  leaving only 440px for the content */
div{
  box-sizing: padding-box;
  width: 500px;
  height: 300px;
  padding: 30px;
}
```

The last value is `border-box`. In this case, any `border` or `padding` property is included within the `width` and `height` of the element. In other words, only `margin` will increase its size.
```css
/* only 500-2*30-2*5= 430px width left
 for the content */
div{
  box-sizing: border-box;
  width: 500px;
  height: 300px;
  padding:30px;
  border: 5px solid green;
```
Usually, the best model to use is `border-box`. It makes the math easier, as the only additional property to watch for is `margin`.

---
## Practice

For which `box-sizing` value, the `width` property contains both the content and the padding?
```css
box-sizing: ???;
```

* `padding-box`
* `border-box`
* `content-box`
* `margin-box`

---
## Revision

For which `box-sizing` value, the `width` property contains the content, the padding and the border?
```css
box-sizing: ???;
```

* `border-box`
* `padding-box`
* `content-box`
* `margin-box`
