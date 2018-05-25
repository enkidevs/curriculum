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

These text fields are useful for instance when you need single line inputs.
Example with placeholders:
```
Name:
<input type="text"
placeholder="Enter Name"><br>

Last Name:
<input type="text"
placeholder="Enter Last Name"><br>

<input
  type="submit"
  value="Submit">
```

**Note: If you have a single line input whose value should contain a date, URL or an email, you should provide a more suitable input type than the `input="text"`.**

More complex example:
```
<form>
  <div>
    <label
      for="uname">Username:
    </label>
    <input
      type="text" id="uname" name="name"
      placeholder="Lower case, No space">
  </div>
  <div>
    <label
      for="name">Name:
    </label>
    <input
      type="text" id="name" name="name"
      placeholder="Enter Name">
  </div>
  <div>
    <label
      for="lname">Last Name:
    </label>
    <input
      type="text" id="lname" name="name"
      placeholder="Enter Last Name">
  </div>
  <div>
    <button>
      Submit
    </button>
  </div>
</form>
```

Furthermore, you can control the physical size of your input fields with the `size` attribute.
When the size is set to, for instance, 20, the input character width cannot exceed that number. The `size` attribute sets the width limit in terms of characters rather than pixels.

Example:
```
<input type="text" size="10>
```

Also, if for instance, you have a form where you don't want to allow the user the user to submit until certain fields have value, you can accomplish that with the `required` attribute.
Setting this attribute makes the form not submittable until a user enters a value. This is very common on most websites, for instance, when creating a new account:
Example new account:
```
<form>
  <div>
    <label
      for="uname">Username:
    </label>
    <input
      type="text" id="uname" name="uname"
      placeholder="Lower case, No space"
      required>
  </div>
  <div>
    <label
      for="name">First Name:
    </label>
    <input
      type="text" id="name" name="fname"
      placeholder="Enter First Name"
      required>
  </div>
  <div>
    <label
      for="lname">Last Name:
    </label>
    <input
      type="text" id="lname" name="lname"
      placeholder="Enter Last Name"
      required>
  </div>
  <div>
    <button>
      Submit
    </button>
  </div>
</form>
```

By adding the `required` attribute, we disable the submit button until the user fills all the `required` values. On the other hand, if the user does try to submit an empty form, they would get a pop up saying which field input is necessary to be filed for the form to submit.

Of course, how you preview to the user that an input is required can be edited with CSS styling.

Simple CSS style where the input lines that the user has to enter upon submit have a reddish shadow around them:

'[Example on codepen.io](https://codepen.io/stefan-stojanovic/pen/GdyOKm?editors=1100)'


Furthermore, the text input can have a `minlength` and `maxlength` attribute as well. These attributes are used to set the minimum and maximum length in characters for the input element.
Example:
```
<form>
  <div>
    <label
      for="name"> Username:
    </label>
    <input
      type="text" id="uname"
      name="name" required size="10"
      placeholder="Username"
      minlength="5" maxlength="10">
  </div>
  <div>
    <button>
      Submit
    </button>
</form>
```

**Note**: When the `required` attribute is set together with the `minlength` attribute and the user tries to enter less characters than required they would get an appropriate error message saying something like "input requires a minimum of X characters", whereas setting the `minlength` without the `required` attribute allows the user to enter any number of characters because the input value is not required, therefore has no limit.

On the other hand, setting the `maxlength` attribute makes the input field have a max number, and the user can't enter any character more than the `maxlength` attribute specifies.

Last but not least, your text inputs can have a specific pattern, or a regular expression, which restricts the user's input to a specific pattern. This is applied with the `pattern` attribute like so:

```
<form>
  <div>
    <label
      for="name"> Username:
    </label>
    <input
      type="text" id="uname"
      name="name" required size="10"
      placeholder="Username"
      pattern="[a-zA-z]{4,12}>
  </div>
  <div>
    <button>
      Submit
    </button>
</form>
```

In this example, we set the input requirements to either upper and lowercase letters and a 4-12 character length limit. If the user tries to submit the form without following the pattern they would get an error message saying something like "Please match the requested format".

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
