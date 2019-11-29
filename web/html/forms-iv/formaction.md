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
  - '[HTML formaction Attribute](https://www.w3schools.com/tags/att_formaction.asp){documentation}'

---
# The `formaction` Attribute
---
## Content

The HTML form input attribute `formaction` is used to specify the form-data when a form is submitted by the input element. This submit has to be either a button or an image.

If the `formaction` attribute is specified, it will override the forms `action` attribute.

Example:
```html
<form action="page1.php"
    method="get">
  Name: <input type="text"
    name="name">
  <button type="submit">
    Submit to Page 1
  </button>
  <button type="submit"
    formaction="page2.php">
    Submit to Page 2
  </button>
</form>
```

![form-formaction](https://img.enkipro.com/4760211ca1e2dfd4e04c4c14f75f4c09.png)

[View CodePen](https://codepen.io/enkidevs/pen/MXZzzo)

---
## Practice

Complete the code so that the second button links properly to the action_page2.php file.

```html
<form action="page1.php"
    method="get">
  Name: <input type="text"
    name="name">
  <button type="submit">
    Submit
  </button>
  <button type="submit"
    ???="page2.php">
    Submit to Page2
  </button>
</form>
```


* formaction
* form
* action
* submit
* form-data
* formpath

---
## Revision

Which input form attribute is used with the submit button when multiple buttons are used to help determine the location for the sent data?

???

* formaction
* form
* action
* submit
* form-data
* formpath

---
## Quiz

### How much do you know about the `formaction` html input form attribute?

Which statement regarding the formaction attribute is true?

* The `formaction` attribute overriders the forms `action` attribute.
* The `formaction` attribute doesn't work when the `action` attribute is present
* The `formaction` doesn't work with images.
* The `formaction` doesn't work with buttons.
