---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

aspects:
  - introduction
  - workout
  - deep

links:

  - '[CSS Pro Tips](https://github.com/AllThingsSmitty/css-protips){website}'
  - '[MDN Docs on Flexbox](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Flexbox){documentation}'


---

# Avoid margin hacks with `flexbox`

---
## Content

When working with column gutters you can get rid of `nth-`, `first-`, and `last-child` hacks by using `flexbox`'s `space-between` property:

```css
.list {
  display: flex;
  justify-content: space-between;
}

.list .person {
  flex-basis: 25%;
}
```
Consider the following image:

![HtmlToSvg.svg](https://img.enkipro.com/5836b46acee2d764e8ee4efb1b8cb8dd.png)

The first row contains 3 columns of `25% width`. Say you have to make them spread like those in the second row.   

To do that without `flexbox`, you would have to set `margin-left` of every column other than the first to be equal to the unused width divided by the number of gaps. Which can get messy really fast.

The column gutters in the second row are inside a `flex` container, with `justify-content: space-between` property. This way, they will always appear evenly spaced.

---
## Practice

Which element should have `display: flex` property in order for the gutters to be equally distributed?

???

* The container.
* Every column gutter.
* Every column gutter but the first.
* The html document.

---
## Revision

Which `flexbox` property can be used to get rid of `nth-`, `first-` and `last-child` column gutter hacks?

```css
.p {
   justify-content:
            ???;
}
```


* `space-between`
* `flex`
* `display-flex`
* `content-box`
* `space-flex`
