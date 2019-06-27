---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.2: 10

aspects:
  - workout
  - deep
  - obscura

links:
  - '[CodePen: Form Target](https://codepen.io/enkidevs/pen/mKaaey){code}'

---
# Formtarget
---
## Content

The HTML `formtarget` input form attribute is used to indicate where to display the response that is received after submitting the form.
If the `formtarget` attribute is specified, it overrides the `target` attribute.

Here is an example of the `formtarget` attribute set to open in a different window after it is submitted:

```html
<form
  action="file.php">
  Name:
    <input type="text"
      name="name">
  <input type="submit"
    formtarget="_blank">
</form>
```

![form-formtarget](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22106%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22106%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EFull%20Name%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2039.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2277%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2253%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2264.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

[View CodePen](https://codepen.io/enkidevs/pen/mKaaey

Other possible values for `formtarget` are:
 - `_self`
 - `_parent`
 - `_top`
 - `framename`

`_self` is the default value if the attribute is not specified and it displays the response in the same window.

`_parent` value displays the response into the parent window of the current one. If there is no parent, this option will behave the same as `_self`.

`_top` value displays the response into the top-level window (that is, the window that is an ancestor of the current one and has no parent). If there is no parent, this option will behave the same as `_self`.

`framename` value displays the response in a named `<iframe>` element.

---
## Practice

Complete the code by adding the appropriate input form attributes to submit the data to a new window.

```html
<form
  action="file.php">
  Name:
    <input type="text"
      name="name">
    <br>
  <input type="submit"
    ???="???">
</form>
```

* formtarget
* _blank
* target
* _new
* frame
* frameset

---
## Revision

Which input form attribute, with values such as “_blank” and “framename”, indicates where to display the response that is received after submitting the form?

???

* formtarget
* target
* _target
* frame
* frameset
