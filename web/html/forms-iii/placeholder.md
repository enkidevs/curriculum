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
# The `placeholder` Attribute
---
## Content

The HTML input form attribute `placeholder` is used to display a short hint that describes the expected value for the selected input field. It is displayed in the input field until the user enters a value.

The placeholder attribute works for several input types:
 - `email`
 - `password`
 - `search`
 - `tel`
 - `text`
 - `URL`

Example:
```html
<form
  action="/action.php">
  <input
    type="text" name="full-name"
     placeholder="Full name"><br>
  <input
    type="submit"
    value="Submit">
</form>
```

![form-placeholder](https://img.enkipro.com/a02fc73d00fa313cb1087ca07e1b5417.png)

[View CodePen](https://codepen.io/enkidevs/pen/LrMJqV)

---
## Practice

Which statement is true regarding placeholder?

???

* Provides a short hint within the input.
* Works with all elements, input, button, header, etc.
* Numbers are not accepted as a placeholder.
* Does not work with the following input types: url, tel, & password

---
## Revision

Which form attribute shares a short hint that describes the expected value of an input field and will be overwritten by their input?

```html
<input
  type="text" name="fname"
  ???="Full name">
```

* placeholder
* hint
* sample
* tip
* note
