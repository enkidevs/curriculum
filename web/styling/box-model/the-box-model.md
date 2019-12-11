---
author: mihaiberq

levels:
  - beginner

type: normal

category: tip

aspects:
  - introduction
  - workout

inAlgoPool: false

links:
  - '[Scrimba CSS the Box Model](https://scrimba.com/p/pWvwCg/cnm3RSZ){website}'
  - '[MDN Docs on the Box Model](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model/Introduction_to_the_CSS_box_model){documentation}'

---

# The *Box Model*

---
## Content

According to the **box model**, every element on the page is a rectangular box that may have `width`, `height`, `margin`, `padding` or `border`.

The dimensions of such a box are calculated by summing the values of the above mentioned properties. To better understand the formula, consider this example:
```css
div{
  width: 600px;
  height: 200px;
  border: 4px solid blue;
  margin: 20px;
  padding: 10px;
}
```

![min.svg](https://img.enkipro.com/306ca4bc4146130304dd3cf3e5897283.png)

The total width of the whole element will be **20+4+10+600+10+4+20=668p**, which is the sum of the content width and left and right `margins`, `borders` and `paddings`.

It is important to mention that some elements *do not accept* top and bottom margin and padding. We will talk about these in more detail in a future workout.

---
## Revision

Which is the inside-out order for the *box model* components?

???

* Content/Padding/Border/Margin
* Content/Border/Padding/Margin
* Padding/Content/Border/Margin
* Content/Padding/Margin/Border

---
## Quiz
### are you familiar with the box model?

What’s the correct outside-in order of the elements contained by the Box Model?

 ???

* Margin/Border/Padding/Content
* Border/Margin/Padding/Content
* Margin/Padding/Border/Content
* Content/Border/Margin/Padding
