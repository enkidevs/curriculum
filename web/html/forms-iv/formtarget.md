---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - workout
  - deep
  - obscura

links:

---
# The `formtarget` Attribute
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

![form-formtarget](https://img.enkipro.com/987efbd8f9042c25e26b95c9607ae550.png)

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
