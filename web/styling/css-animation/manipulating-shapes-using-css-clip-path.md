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

**Note:** Top-left corner of the `element` is located at *(0%,0%)*, while the bottom-right one at *(100%, 100%)*.

Here is another example with `clip-path` on an `<img>` element, and the `shape-outside` on a `<div>`:

![html-code-for-manipulating-shapes](https://img.enkipro.com/80365513e58497f9481394e0aa10c42b.png)

![manipulating-shapes-no-css-output](https://img.enkipro.com/784245ce7383a96cc457774dbade5fe2.png)

The first two images show the HTML without any CSS and its output.

The following two images show the added CSS and the new output:

![manipulating-shapes-added-css](https://img.enkipro.com/6f4d868b62eb19eeca6ca08d5d86abef.png)

![manipulating-shape-output-with-css](https://img.enkipro.com/afad6369ac1874d040886e7c24532dde.png)

In the added CSS example, we have clipped the `<img>` element to show an elliptical image instead of the square one shown in the first output.

> Even though we have added the `shape-outside` to the `<div>` element, we haven't changed it. This is because this option changes how other elements react in relation to this one. Meaning, the `<p>` element will have the circle shape, not the `<div>`.

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
