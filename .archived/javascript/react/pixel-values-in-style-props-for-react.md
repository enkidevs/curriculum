# Pixel values in style props for **React**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: tip

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/tips/style-props-value-px.html){website}

---
## Content

In **React** when using in-line `styles` , appending the `px` prefix at the end of a property's value is not necessary. 

**React** will automatically append this when rendering for properties that shouldn't be unitless.

Define in-line style property:
```javascript
var myStyle = {
    height: 10
}; 

```
The `height` property will be rendered as `height:10px`.

There are other *CSS* properties that are intended to be left unit-less including `opacity`, `order`, `flex`, `zoom` and many more.

Keep in mind that this feature will become deprecated with upcoming releases. With the release of **React 15** warnings are shown with the intention of notifying the user of this change.

---
## Practice

How will this be computed ?
```javascript
var myStyle = {
    width: 32
};
// width:???
```

*`32px`
*`32em`
*`error`
*`32`

---
## Revision

How will this be computed ?
```javascript
var myStyle = {
    width: 32
};
// width:???
```

*`32px`
*`32em`
*`error`
*`32`