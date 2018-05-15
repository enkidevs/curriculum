---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - workout
 
links:
  - '[MDN docs and examples for forms](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form){website}'

---
# Intro form
---
## Content

The HTML `<form>` element is used to represent a section of a document that contains interactive controls for a user to input information to submit to a web server. 

The `<form>` element has many attributes, some of them:
 - action
 - autocomplete
 - method
  - get
  - post
 - name
 - novalidate
 
Brief explanation:
 
The `action` form attribute used to specify where to send the data.
The `autocomplete` attribute is used to indicate whether the values for the `input` elements will be automatically completed by the browser.
The `get` method is used to send the form data encoded within the URL.
The `post` method is used to encode the data within the message body of the HTTP request.
The `name` specifies the name of the form.
The `novalidate` is of type boolean, and when specified indicated that the form should not be validated.

Example `action`:
```
<form action="/submitpage.php">
```

In this example, the form is submitted to the `submitpage` page. Otherwise, if not specified, the form is submitted to the current page.

Example `get` method:
```
<form action="" method="get">
  <label 
    for="GET-age">Age:
  </label>
  <input 
    id="GET-age" 
    type="text" 
    name="age">
  <input 
    type="submit" 
    value="Submit">
</form>
```

Example `post` method:
```
<form action="" method="post">
  <label 
    for="POST-age">Age:
  </label>
  <input 
    id="POST-age" 
    type="text" 
    name="age">
  <input 
    type="submit" 
    value="Submit">
</form>
```

Furthermore, the `<input>` element is the most important form element. 
Interactive elements like text fields, radio buttons, and checkboxes, must be placed within an `<form>` HTML element to collect user input via the `input` element. 

Example textfield:
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

