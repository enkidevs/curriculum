---
author: Billiexu
type: normal
category: feature
tags:
  - flexbox
links:
  - >-
    [Flexbox
    Fundamentals](https://egghead.io/lessons/misc-flexbox-fundamentals){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Direction : column-reverse


---

## Content

In Flexbox, `column-reverse` enables users to arrange elements vertically in reverse order.

```html
<div class="parent">
  <div class="child-1">Child 1</div>
  <div class="child-2">Child 2</div>
  <div class="child-3">Child 3</div>
  <div class="child-4">Child 4</div>
</div>

```

---

```css
.parent{
  width:100%;
  display:flex;
  flex-direction:column-reverse;
}

```

The four child boxes inside class parent will be displayed **vertically** on top of one another in reverse order, starting from the bottom of the parent element:

![566ed55387abab0c00bccab0.svg](https://img.enkipro.com/c9bd35fa50bf1db13c2a2b28764e8e7a.png)


---

## Practice

Which of the following elements will be displayed first?

```html
<div class="foobar">
  <p>Child 1</p>
  <p>Child 2</p>
</div>
```

```css
.foobar {
  display: flex;
  flex-direction: column-reverse;
}
```

```plain-text
Child ???
```

- 2
- 1


---

## Revision

When using Flexbox, how does `column-reverse` allow users to arrange elements?

 ???

- Vertically in reverse order.
- Vertically in normal order.
- Horizontally in reverse order.
- Horizontally in normal order.
