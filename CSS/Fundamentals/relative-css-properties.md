# Relative CSS properties
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

On the other hand, there are the relative values: *percentages* and *ems*, that scale depending on the container's properties.

**Percentages** are represented using `%` notation, and depends on the container's size:
```css
#rect{
 width: 20%;
 height: 100px;
}
```
The rectangle above will have `100px height` on every device, but its width will depend on the container's width. If the parent's width is `500px`, the rectangle would become a square.

They are extremely useful when working with multiple screen types.

**Em** is a bit trickier. `1em` is equal to the element's **font size**:
```css
div{
  font-size: 16px;
  height: 10em;
}
```
This will effectively make the `div`s `160px in height`. If the `div` wouldn't have had the `font-size` specified, `em` would relate to the closest parent with the property.

They are useful for setting properties like `font-size` for inner paragraphs, `letter-spacing` or `margin` and `padding`.


---
## Practice

For the following CSS code:
```
.container{
  font-size: 20px;
  width: 500px;
  height: 300px;
}
```
And the HTML:
```html
<div class="container">
  <div></div>
</div>
```
Which of the following values is not equivalent to a `width` of `200px` for the inner `div`?

???
* width: 20em;
* width: 40%;
* width: 200px;
* width: 10em;

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
