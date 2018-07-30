---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout

standards:
  web.html-forms.0: 10
  
links:
  - '[MDN docs for text](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/text){website}'
  - '[Example on codepen.io](https://codepen.io/stefan-stojanovic/pen/GdyOKm?editors=1100){code}'

---
# Text Field
---
## Content

The HTML input element of type `text` is used to create basic single line text fields.

Example:
```
<input type="text">
```

These text fields are useful for instance when you need single line inputs like for creating a new account.

Example new account:
```
<form>
  <div>
    <label
      for="uname">Username:
    </label>
    <input
      type="text" id="uname" name="uname"
      placeholder="Lower case, No space">
  </div>
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

**Note: If you have a single line input whose value should contain a date, URL or an email, you should provide a more suitable input type than `input="text"`.**

Next, you can control the physical size of your input fields with the `size` attribute.
When the size is set to, for instance, 20, the input character width cannot exceed that number. The `size` attribute sets the width limit in terms of characters rather than pixels.

Example:
```
<input type="text" size="10>
```

More on textfield attributes and examples in the next insight. 

---
## Practice

Write the form code that creates a single line input for text.

```
<??? ???="???">
```

* input
* type
* text
* form
* text

---
## Revision

Which line creates a HTML form’s input text field?

???

* `<input type="text">`
* `<textfield type="input">`
* `<form input="textfield">`
* `<textinput type="text">`

---
## Quiz

### How much do you know about the HTML input `type="text"`?

What does the required attribute do in this code?

```
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

* Makes the form not submittable without a value
* Standard when creating any input type
* makes the text turn blue
* Makes the user type only text as input, no numbers allowed
