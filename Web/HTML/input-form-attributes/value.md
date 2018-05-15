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
  - https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input
  - https://www.w3schools.com/tags/att_input_value.asp
  
---
# Value
---
## Content

The HTML input form `value` attribute is used to specify a value for an `<input>` element.

Example:
```
<form 
  action="/action.php">
  Full name: 
    <input 
      type="text" 
      name="fname" 
      value="John Doe"><br>
  <input 
    type="submit" 
    value="Submit form">
</form>
```

This value in the `value` attribute is editable and is used differently with different types of the `<input>` element.

For `type="button"`, `type="reset"`, and `type="submit"`, the `value` attribute is used to define the text on the button.

For `type="text"`, `type="password"`, and `type="hidden"`, the `value` attribute is used to define the default, or initial value of the input field.

For `type="checkbox"`, `type="radio"`, and `type="image"`, the `value` attribute is used to define a value that is associated with the input. This value is sent upon submit.

**Notes:**
  - **The `value` attribute cannot be used with the input `type="file"`.
  - **The `value` attribute is optional except when the value of the input type equals `type="checkbox"` or `type="radio"`.
  
---
## Practice

The value attribute is applied to a form’s input types for all but which option?

???

* File: It defines the filename where the data will be sent.
* Button, reset, & submit: It defines the text within the button
* Text, password, & hidden: It sets the default value of the input field.
* Checkbox, radio, & image: It sets the value based on the selection and sends that value when submitted.

---
## Revision

Which attribute is used in a form’s input field to set the initial value?

???

* value
* default
* set
* option
* selected
