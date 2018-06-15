---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.0: 10
  web.html-forms.3: 10

aspects:
  - introduction
  - workout
  - deep

---
# Placeholder
---
## Content


The HTML input form attribute `placeholder` is used to display a short hint that describes the expected value for the selected input field.
It is displayed in the input field until the user enters a value.

The placeholder attribute works for several input types:
 - `email`
 - `password`
 - `search`
 - `tel`
 - `text`
 - `URL`

Example:
```
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

```
<input
  type="text" name="fname"
  ???="Full name">
```

* placeholder
* hint
* sample
* tip
* note
