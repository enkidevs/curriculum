---
author: Billiexu

levels:

  - advanced

type: normal

category: feature

tags:

  - css

  - flexbox


links:

  - '[egghead.io](https://egghead.io/lessons/misc-flexbox-fundamentals){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content){documentation}'


---

# Flexbox `justify-content`

---
## Content

In Flexbox, there are many useful values for `justify-content` property. `space-between` and `space-around` are the most helpful two to distribute elements along the `flex-direction` _(x-axis by default)_:

HTML:

```
<div class="parent">
  <div class="child-1">Child 1</div>
  <div class="child-2">Child 2</div>
  <div class="child-3">Child 3</div>
</div>

```

`space-between` distributes child elements across the width of the parent container with the starting and ending elements *fixed to the sides of the parent container*.

```
.parent{
  width:100%;
  display:flex;
  justify-content: space-between
}

```
![spacebetween-01.svg](%3Csvg%20version%3D%221.2%22%20baseProfile%3D%22tiny%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20height%3D%22auto%22%20viewBox%3D%220%200%20612%20200%22%3E%0A%20%20%3Cpath%20fill%3D%22%23596193%22%20stroke%3D%22%23596193%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M0%200h612v200H0z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23596193%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M495%2050h100v100H495zM15%2050h100v100H15zM264%2050h100v100H264z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23000%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M0%20199.674%22%2F%3E%0A%3C%2Fsvg%3E%0A)


`space-around` gives each element the same amount of space on its left and right across the width of the container, and the starting and ending elements are not necessarily fixed to the sides of the parent container.

```
.parent{
  justify-content: space-around
}

```

![spacearound-01.svg](%3Csvg%20version%3D%221.2%22%20baseProfile%3D%22tiny%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20height%3D%22auto%22%20viewBox%3D%220%200%20612%20200%22%3E%0A%20%20%3Cpath%20fill%3D%22%23596193%22%20stroke%3D%22%23596193%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M0%200h612v200H0z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23596193%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M460%2050h100v100H460zM50%2050h100v100H50zM250%2050h100v100H250z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23000%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M0%20199.674%22%2F%3E%0A%3C%2Fsvg%3E%0A)

---
## Practice

Which of the following `justify-content` values will display items evenly distributed, with the first item positioned near margin of the container?
```
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

