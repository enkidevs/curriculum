---
author: Billiexu

levels:

  - advanced

type: normal

category: feature

aspects:
  - workout
  - deep

tags:

  - css

  - flexbox


links:

  - '[Justify Content](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content){documentation}'


---

# Flexbox `justify-content`

---
## Content

In Flexbox, there are many useful values for `justify-content` property. `space-between` and `space-around` are the most helpful two to distribute elements along the `flex-direction` _(x-axis by default)_:

HTML:

```html
<div class="parent">
  <div class="child-1">Child 1</div>
  <div class="child-2">Child 2</div>
  <div class="child-3">Child 3</div>
</div>

```

`space-between` distributes child elements across the width of the parent container with the starting and ending elements *fixed to the sides of the parent container*.

```css
.parent{
  width:100%;
  display:flex;
  justify-content: space-between
}

```
![spacebetween-01.svg](https://img.enkipro.com/a2e5502547ef78c453029ac3c2aae6c2.png)


`space-around` gives each element the same amount of space on its left and right across the width of the container, and the starting and ending elements are not necessarily fixed to the sides of the parent container.

```css
.parent{
  justify-content: space-around
}

```

![spacearound-01.svg](https://img.enkipro.com/b37d3c8ad91456275d6b63ddf5baaac0.png)

---
## Practice

Which of the following `justify-content` values will display items evenly distributed, with the first item positioned near margin of the container?
```css
.flex-container{
  justify-content:
            ???;
}
```

* `space-between`
* `space-around`
* `center`
* `flex-start`

---
## Revision

To give elements the same amount of space between them, as well as the container, `justify-content` values should be

???

* space-around
* space-between
* flex-start
* center
