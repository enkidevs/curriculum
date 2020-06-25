---
author: Billiexu

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:
  - workout
  - deep

tags:

  - css

  - flexbox


links:

  - '[Article on flex-shrink](https://css-tricks.com/almanac/properties/f/flex-shrink/){article}'
  - '[MDN Docs on flex-shrink](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-shrink){documentation}'

---

# Using `flex-shrink`

---
## Content

`flex-shrink` specifies the "flex shrink factor".

This determines how much the flex item will shrink relative to the rest of the items when there isn't enough space on the row.

When omitted, it is set to 1 and the flex shrink factor is multiplied by the flex basis when distributing negative space.

HTML:
```html
<ul class="flex-container">
  <li class="flex-item flex1">1</li>
  <li class="flex-item flex2">2</li>
</ul>

```

CSS:
```css
.flex1 { flex-shrink: 2;
         flex-basis: 20em; }
.flex2 { flex-shrink: 1;
         flex-basis: 20em; }
```
Both flex items want to be 20em wide.

If the parent element is less than 40em wide, then the 2nd child will have twice as much removed as the 1st child, making it smaller (due to `flex-shrink`).

The following container is 30em wide. You can see how the children have been resized by `flex-shrink`:

![30emcontainer.svg](https://img.enkipro.com/caaa05497ad9758e1bb8eaf90af8e405.png)

---
## Practice

Elements of which class will shrink three times as much as the largest one?
```css
.container{
  width: 800px;
}
.flex1{
  flex-shrink: 3;
  flex-basis: 300px;
}
.flex2{
  flex-shrink: 1;
  flex-basis: 300px;
}
.flex3{
  flex-shrink: 1;
  flex-basis: 300px;
}
```
???

* flex1
* flex3
* flex2
* none

---
## Revision

What does the `flex-shrink` factor determine?

???


* How much the flex item shrinks relative to the rest of the items if there's not space on the row.
* How much the flex item shrinks on the page.
* How much the flex item expands.
