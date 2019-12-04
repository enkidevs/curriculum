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
# HTML `password` type input
---
## Content

The HTML input form `type="password"` attribute is used to display each character either as an asterisk, or a circle. This attribute is very similar to the `type="text"` attribute, but hides each character entered.

Example:
```html
<form
  action="/action.php">
  Username:
  <input
    type="text"
    name="username">
  Password:
  <input
    type="password"
    name="password">
  <input
    type="submit"
    value="Submit">
</form>
```

![form-password](https://img.enkipro.com/89f4f7a3a325c22f41b0c757cc2c4b46.png)

[View CodePen](https://codepen.io/enkidevs/pen/dKwgVW)

Where the Username field accepts text as normal, the Password field hides the characters typed by displaying them as bullets (•••)

---
## Practice

Which statement is true about the "type=password" attribute:

???

* Each input character appears as bullet.
* Each input character appears as a dollar sign
* Each input character does not appear.
* Must use `width` to adjust input text size vs `font-size`.

---
## Revision

When sensitive data is input into a text field that should display as `*` in place of characters, which form attribute is used?

???

* password
* private
* hidden
* secret
* astrisk

---
## Quiz

### How much do you know about HTML input form attributes?

Mark which statement is true about the "type=password" attribute:

* Each input character appears as an bullet or astrisk.
* Each input character appears with the strikethrough style.
* Each input character appears as normal but autocomplete is disabled.
* Each input character does not appear.
