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
  - '[HTML <form> Elements](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form){documentation}'

---
# Intro `<form>`
---
## Content

The HTML `<form>` element is used to represent a section of a document that contains interactive controls for a user to input information, like input text fields, checkboxes, and radio buttons. This element can automatically create a request to send to a web server, if the right attributes are specified.

The `<form>` element has many attributes, some of them:

- action
- autocomplete
- method
- name
- novalidate

Brief explanation:

The `action` form attribute used to specify where to send the data.

There are two methods used to send the data:
- The `GET` method is used to send the form data encoded within the URL.
- The `POST` method is used to encode the data within the message body of the HTTP request.

The `autocomplete` attribute is used to indicate whether the values for the `input` elements will be automatically completed by the browser and is on by default.

The `name` specifies the name used to identify the form.

The `novalidate` is of type boolean, and when specified indicated that the form should not be validated.


Basic Form Example:
```html
<form action="" method="POST">
  <label
    for="age">Age:
  </label>
  <input
    id="age"
    type="text"
    name="age">
  <input
    type="submit"
    value="Submit">
</form>
```

![form-intro](https://img.enkipro.com/d8f6de0fd5a595a1eef2b475dea8339e.png)

[View CodePen](https://codepen.io/enkidevs/pen/MBgZxg)

---
## Practice

Match the definitions with the proper terms:

??? : Form attribute used to specify where to send the data.
??? : Method used to send the form data encoded within the URL.
??? : Method used to encode the data within the message body of the HTTP request.

* action
* get
* post
* path
* input
* catch

---
## Revision

Interactive elements like textfields, radio buttons, and check boxes, must be placed within which HTML element to collect user input.

???

* `<form>`
* `<input>`
* `<field>`
* `<embed>`
* `<data>`
* `<fieldset>`

---
## Quiz

### How much do you about `<form>` elements?

Which form element is used to collect user data?

???

* `<input>`
* `<field>`
* `<embed>`
* `<data>`
* `<fieldset>`
* `<collect>`
