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
  - '[MDN docs and examples for forms](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form){website}'

---
# Intro form
---
## Content

The HTML `<form>` element is used to represent a section of a document that contains interactive controls for a user to input information. This element can automatically create a request to send to a web server, if the right attributes are specified.

The `<form>` element has many attributes, some of them:

- action
- autocomplete
- method
- name
- novalidate

Brief explanation:

The `action` form attribute used to specify where to send the data.  

The `autocomplete` attribute is used to indicate whether the values for the `input` elements will be automatically completed by the browser.  
- The `GET` method is used to send the form data encoded within the URL.
- The `POST` method is used to encode the data within the message body of the HTTP request.

The `name` specifies the name of the form.  

The `novalidate` is of type boolean, and when specified indicated that the form should not be validated.  

Example `action`:
```
<form action="/submitpage.php">
```

In this example, the form is submitted to the `submitpage` page. Otherwise, if not specified, the form is submitted to the current page.

Example `get` method:
```
<form action="" method="GET">
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

Example `post` method:
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
