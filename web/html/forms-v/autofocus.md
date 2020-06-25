---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep

links:

---
# The `autofocus` Attribute
---
## Content

The HTML input form `autofocus` attribute is used to specify an `<input>` element to have focus once the web page is loaded.

Example:
```html
<form action="/credit_card.php">
  Full name: <input type="text"
    name="fullname" autofocus>
  Card number: <input type="number"
    name="ccnumber">
  Exparation date: <input type="month"
    name="ccdate">
  CV: <input type"number"
    name="cvnumber">
  <input type="submit">
</form>
```

![form-autofocus](https://img.enkipro.com/553f219253150ae4bd0c9bed2e97dff6.png)

[View CodePen](https://codepen.io/enkidevs/pen/djbrLP)

In the example above, the first text field has the autofocus set, so when the page loads, the text box will be selected by default and the user can start entering text right away without having to click the textfield.

You can assign `autofocus` as either `autofocus`, `autofocus=""` or `autofocus="autofocus"`. All three options work the same in HTML5 however,  if you're using XHTML `autofocus` is required to be written as `autofocus="autofocus"`.

---
## Practice

Which statement isn't true regarding autofocus?

???

* It should be assigned to every control in the form.
* Automatically sets focus to assigned control when the page loads.
* User can start using assigned control without having to select it first.
* Can be assiged as: `autofocus` or `autofocus="autofocus"`

---
## Revision

Which input form attribute sets a selected input as active when the page loads?

???

* autofocus
* mark
* input
* active
* focus
* auto

---
## Quiz

### How much do you know about HTML form input attributes?

Which statement regarding autofocus is not true?

* It should be assigned to every control in the form.
* Automatically sets focus to assigned control when the page loads.
* Can be assiged as: `autofocus` or `autofocus="autofocus"`
* User can start using assigned control without having to select it first.
