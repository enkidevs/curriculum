---
author: mihaiberq

levels:
  - basic
  - advanced
  - medium
  - beginner

type: normal

aspects:
  - introduction
  - workout

category: must-know

inAlgoPool: false


links:
  - '[Scrimba CSS Margins](https://scrimba.com/p/pWvwCg/cpKPmh9){tutorial}'
  - '[MDN Docs on Margin](https://developer.mozilla.org/en-US/docs/Web/CSS/margin){documentation}'
  - '[MDN Docs on Padding](https://developer.mozilla.org/en-US/docs/Web/CSS/padding){documentation}'
  - '[Scrimba CSS Padding](https://scrimba.com/p/pWvwCg/czM84uZ){tutorial}'

---

# Margin and Padding

---
## Content

Both properties are, alongside `border`, part of the **box model**. They are usually used to help with positioning and visibility.

Different browsers may have different default values for elements, so specifying them yourself might be a good idea.

### Margin
The `margin` property sets the amount of space that surrounds an element, outside its `border`. They are used for *positioning* the element inside a page and distancing it from other elements.

Like `border`, margins can be set individually:
```css
div{
  margin-top:20px;
  margin-left: 10px;
  margin-bottom: 20px;
}
```
Or using the shorthand notation:
```css
div{
/* same value for top and bottom
   and left and right */
  margin: 20px 10px;
/* values for top, right, bottom
   and left */
  margin: 20px 5px 15px 10px;
}
```

### Padding

The `padding` property sets the space between the `content` and the `border`, in case of the element having a border. The property is used to provide spacing inside an element:
```css
div{
  padding: 10px;
}
```
Unlike `margin`, it will extend the element borders:

![min.svg](https://img.enkipro.com/a56ff0ee4baa0162a400e442f55d38cc.png)

On the first line, neither of the rectangles have margin or padding. On the second line, the *green* one has `padding-right:50px`, while the *orange* one has `margin-left:30px`. You can see the difference between the two properties.

Just like margins, you can set individual padding:
```css
div{
  padding-top: 30px;
  padding-right: 15px;
}

/* or */
div.special{
  padding: 10px 0px 30px 5px;
}
```

---
## Practice

In the `padding` shorthand declaration, which value is the `padding-left`?
```css
padding: 10px 0px 13px 5px;
```
???


* Fourth
* First
* Second
* Third

---
## Revision

The ??? property expands the borders of the element, while ??? property pushes it from other adjacent ones.


* padding
* margin
* border
* box
