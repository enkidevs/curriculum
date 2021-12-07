---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [HTML <text>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/text){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Text Field


---

## Content

The HTML input element of type `text` is used to create basic single line text fields.

Example:

```html
<input type="text">
```

These text fields are useful for instance when you need single line inputs like for creating a new account.

Example new account:

```html
<form>
  <div>
    <label
      for="name">First Name:
    </label>
    <input
      type="text" id="name" name="fname"
      placeholder="Enter First Name">
  </div>
  <div>
    <label
      for="lname">Last Name:
    </label>
    <input
      type="text" id="lname" name="lname"
      placeholder="Enter Last Name">
  </div>
  <div>
    <button>
      Submit
    </button>
  </div>
</form>
```

![form-single-inputs](https://img.enkipro.com/ed157ae3fb134c51f3cc4835ca89bd98.png)

> 💡 If you have a single line input whose value should contain a date, URL, or an email, you should provide a more suitable input type than `type="text"`.

Next, you can control the physical size of your input fields with the `size` attribute. The `size` attribute sets the width of the text field in terms of characters rather than pixels.

Example: 

```html
<input type="text" size="10" >
```


---

## Practice

Write the form code that creates a single line input for text.

```html
<??? ???="???">
```

- input
- type
- text
- form


---

## Revision

Which line creates a HTML form’s input text field?

???

- `<input type="text">`
- `<textfield type="input">`
- `<form input="textfield">`
- `<textinput type="text">`


---

## Quiz

### How much do you know about the HTML input


`type="text"`

?

What does the required attribute do in this code?

```html
<form>
  <div>
    <label
      for="name">First Name:
    </label>
    <input
      type="text" id="name"
      name="name" required>
  </div>
  <div>
    <button>
      Submit
    </button>
  </div>
</form>
```

???

- Makes the form not submittable without a value
- Standard when creating any input type
- makes the text turn blue
- Makes the user type only text as input, no numbers allowed
