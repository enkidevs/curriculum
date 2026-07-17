---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [HTML <form>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The input Element


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

![form-input-1](https://img.enkipro.com/3528ccd4e1f9ff2aefbbfca0805596a3.png)

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

![simple-radio-buttons](https://img.enkipro.com/cfab32b52b4d19035974b4d89752aa10.png)

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

![simple-submit-button](https://img.enkipro.com/70c60859b71cdb20e4aeca00908ec931.png)

As you can see, the `input` element is responsible for many of the form controls on the web that you are familiar with.

![simple-submit-button-2](https://img.enkipro.com/8fd74db1b405a30c7e64397bfefe73b9.png)

---

## Practice

Which input type creates a HTML form’s input text field?

```html
<input type="???">
```

- text
- string
- default
- _blank


---

## Revision

Create a text field to collect a user's name in a form:

```html
<input 
  type="???" 
  name="user_name"
>
```

- text
- number
- field
- user_name
- name
- null
