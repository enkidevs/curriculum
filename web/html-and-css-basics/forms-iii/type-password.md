---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.0: 10
  web.html-forms.7: 10

aspects:
  - introduction
  - workout
  - deep

---
# Type=password
---
## Content

The HTML input form `type="password"` attribute is used to display each character either as an asterisk or a circle. This attribute is very similar to the `type="text"` attribute.

Example:
```
<form
  action="/action.php">
  Username:
  <input
    type="text"
    name="usrname"><br>
  <input
    type"password"
    name"password"><br>
  <input
    type="submit"
    value="Submit">
</form>
```

In the example above we have two input fields that look the same, but behave slightly differently.
The only difference is that the password field will replace and display each character with either an asterisk or a circle.

---
## Practice

Which statement is true about the "type=password" attribute:

???

* Each input character appears as asterisk.
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

* Each input character appears as an asterisk or circle.
* Each input character appears with the strikethrough style.
* Each input character appears as normal but autocomplete is disabled.
* Each input character does not appear.
