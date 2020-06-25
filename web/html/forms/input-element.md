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

links:
  - '[HTML <form> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form){documentation}'

---
# The `<input>` Element
---
## Content

The `<input>` element is the most basic, and flexible form element. Interactive `<input>` elements like text fields, radio buttons, and checkboxes, must be placed within an `<form>` HTML element to collect user input.

Here's an example of a raw text field:
```html
<form>
 First Name:
 <input
  type="text"
  name="firstname">

 Last Name:
 <input
  type="text"
  name="lastname">
</form>
```

![form-input-1](https://img.enkipro.com/3f93f71cd5cffd6b6379485b4775f740.png)

Example radio buttons:
```html
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
    value="26-35">26-35<br>
  <input
    type="radio"
    name="age"
    value="36+">36+
</form>
```

![simple-radio-buttons](https://img.enkipro.com/ca2acc311b7dd6afa4fc91a2ec415d05.png)

Example submit:
```html
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

![simple-submit-button](https://img.enkipro.com/c81d300085b210f718524243aa4eea1c.png)

[View CodePen](https://codepen.io/enkidevs/pen/pZzGPJ)

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
