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

  - box-shadow

  - shadows

  - drop-shadow

  - inset-shadow


links:

  - '[MDN Docs on Box Shadow](https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow){documentation}'


---

# Use the `box-shadow` property to create shadow effects on an element

---
## Content

The required values are the sizes of offset-x and offset-y of the shadow. You can also add `color`, `blur-radius` and `spread-radius`.

For example:
```css
div {
  box-shadow: 5px 5px 3px lightblue;
}
```
This `div` element will have shadow offset by 5px and a `blur-radius` of 3px.

Use the keyword `inset` to make the shadow appear inside the frame instead of as a drop shadow (which is default).
```css
div.inset {
  box-shadow: inset 5px 5px lightblue;
}
```
You can see below the difference. The second square has `inset` shadowing:

![HtmlToSvgmin.svg](https://img.enkipro.com/1bb0bc1538f8e30b988878ad516e97c9.png)

---
## Practice

The first two parameters in the following code snippet are the ??? of the shadow.

```
div {
  box-shadow: 4px 4px 2px red;
}
```


* offset
* size
* area
* shade

---
## Revision

What `box-shadow` properties does the following CSS code give to the p element? ???

```css
p {
   box-shadow: 5px 2px 4px blue;
}
```

* A blue shadow with offset-x = 5px, offset-y = 2px and a blur radius of 4px.
* A blue shadow with offset-y = 2px, offset-y = 4px and a blue radius of 5px.
* A blue shadow with offset-x = 2px, offset-y = 5px and a blur radius of 4px.
