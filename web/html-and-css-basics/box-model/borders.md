---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false




---

# Borders

---
## Content

Borders occupy the space between margin and padding, providing an outline of the element. For a `border` to be displayed, it requires 3 properties: `width`, `style` and `color`. Those properties can be declared individually:
```css
div{
  border-width: 4px;
  border-style: solid;
  border-color: red;
}
```
Or using the shorthand notation, that respects the same order:
```
div{
  border: 4px solid red;
}
```
Borders can have different styles, of which the most common is `solid`. Others are `dashed`,`dotted` or `double`.

You can also set borders for sides individually:
```
div{
  border-left: 4px dashed red;
  border-top: 2px double blue;
  border-right: 10px dotted green;
}
```

---
## Practice

In the shorthand declaration, where is the style of the border located?
```
border: 1 2 3;
```
???

* 2
* 1
* 3

---
## Revision

In the shorthand declaration, where is the color of the border located?
```
border: 1 2 3;
```
???

* 3
* 1
* 2

