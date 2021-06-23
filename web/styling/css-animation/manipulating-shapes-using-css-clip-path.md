---
author: oj14henry
type: normal
category: feature
tags:
  - clip-path
  - shapes
links:
  - >-
    [Working With
    Shapes](https://css-tricks.com/working-with-shapes-in-web-design/){Article}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Manipulating shapes using clip-path


---

## Content

You can use functions that are applied to `shape-outside` to `clip-path`, ie, `inset()`, `polygon()`, `ellipse()`.
Below is an example of `clip-path` in action:

```css
#element {
  width: 300px;
  height: 150px;
  clip-path:
    polygon(0% 0%, 100% 100%, 0% 100%);
}
```

The list separated by commas define the *(x,y)* coordinates for each point. Translated into *px*, its equivalent would be `polygon(0px 0px, 300px 150px, 0px 150px)`. Three points will determine a triangle.

![clippathtriangle.svg](https://img.enkipro.com/9b9a4914d020ad42c618f59d8fe30abf.png)

If you want text to wrap around a shape, you have to combine `clip-path` with the `shape-outside` property.

> 💡 Top-left corner of the `element` is located at `(0%,0%)`, while the bottom-right one at `(100%, 100%)`.

Take a look at these two square Enki logos:

![manipulating-shapes-enki-logo-example](https://img.enkipro.com/3dc5e3eea131276d0e75a779141a2fc9.png)

Here's the HTML code:
```html
<!-- Regular Enki Logo -->
<img src="https://img.enkipro.com/3369b724e5749ae19442e4677362c1e8.png">

<!-- Enki Logo with a class called "clipped" -->
<img class="clipped" src="https://img.enkipro.com/3369b724e5749ae19442e4677362c1e8.png">
```

Let's see what happens when we use `ellipse` instead of `polygon`:
```css
.clipped { 
  clip-path: ellipse(65px 30px at 125px 40px);
}
```

we can see the difference:

![enki-image-output-for-manipulating-shapes](https://img.enkipro.com/a50732d668d8f66212f89a8420942551.png)


---

## Practice

Which two properties have to be combined in order for you to be able to wrap text around a shape?

???

- clip-path and shape-outside
- clip-path and inset
- inset and shape-outside
- path-wrap and shape-wrap


---

## Revision

What shape does the following piece of code make? ???

```css
div {
  width: 200px;
  height: 200px;
  background-color: #66ff33;
  clip-path: polygon
             (0% 100%, 100% 100%, 0% 0%);
}
```

- A triangle.
- A hexagon.
- A square.
- An octagon.
