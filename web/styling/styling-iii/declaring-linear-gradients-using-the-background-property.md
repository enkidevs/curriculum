---
author: priyankinirmal

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - workout
  - deep

tags:

  - css

  - gradient

  - linear-gradient

  - background


links:

  - '[CSS Gradients](https://css-tricks.com/css3-gradients/){article}'


---

# Declaring linear gradients using the `background` property

---
## Content

Use the shorthand `background` property to declare gradients.

The most common type of  gradient is `linear-gradient()`. Declare the direction of the gradient (you can even use degrees) followed by the color stops. For example:

```css
div.gradient {
  /* webkit browser */
  background: -webkit-linear-gradient(right,
  blue, green);
  /* standard syntax */
  background: linear-gradient(to right,
  blue, green);
}
```
This gradient will transition from blue to green from left to right.

---
## Practice

Which is the most common type of gradient?
???


* `linear-gradient`
* `square-gradient`
* `perpendicular-gradient`
* `bi-linear-gradient`
* `radial-gradient`

---
## Revision

What does the following CSS code snippet do? ???

```css
span.gradient {
   background: linear-gradient(to left, red,
                               white);
}
```

* Transitions the gradient from red to white, starting from right to left.
* Transitions the gradient from red to white, starting from left to right.
* Transitions the gradient from white to red, starting from right to left.
* Transitions the gradient from white to red, starting from left to right.
