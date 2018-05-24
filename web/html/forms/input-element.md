---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.0: 10

aspects:
  - introduction
  - workout

links:
  - '[MDN docs and examples for forms](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form){website}'

---
# Input Element
---
## Content

The `<input>` element is the most basic, and flexible form element.
Interactive elements like text fields, radio buttons, and checkboxes, must be placed within an `<form>` HTML element to collect user input via the `input` element.

Here's an example of a raw text field:
```
<form>
 Full name:<br>
 <input
  type="text"
  name="fullname"><br>
</form>
```

Example radio buttons:
```
<form>
  <input
    type="radio"
    name="age"
    value="0-18"
    checked>0-18<br>
  <input
    type="radio"
    name="age"
    value="19-25">19-25<br>
  <input
    type="radio"
    name="age"
    value="26-35">26-35
  <input
    type="radio"
    name="age"
    value="36+">36+
</form>
```

Example submit:
```
<form>
 Full name:<br>
 <input
  type="text"
  name="fullname"><br>
 <input
  type="submit"
  value="Submit">
</form>
```

As you can see, the `input` element is responsible for many of the form controls on the web that you are familiar with.

---
## Practice

Which input type creates a HTML form’s input text field?

`<input type="???">`

* text
* string
* default
* _blank


---
## Revision

Create a text field to collect a user's name in a form:

`<input type="???" name="user_name">`

* text
* number
* field
* user_name
* name
* null
