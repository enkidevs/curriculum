---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.0: 10
  web.html-forms.1: 10

aspects:
  - introduction
  - workout

links:
  - '[CodePen: Basic Form](https://codepen.io/enkidevs/pen/MBgZxg){code}'
  - '[MDN docs and examples for forms](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form){website}'

---
# Intro form
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
```
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

![form-intro](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2252%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2252%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22173%22%20y%3D%2229%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%22166.5%22%20y%3D%2216.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EAge%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M59.5%2017.5h100v16h-100z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/MBgZxg)-->

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
