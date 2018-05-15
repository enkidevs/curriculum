---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

links:
  - https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input
  - https://www.w3schools.com/tags/att_input_readonly.asp
  
---
# Readonly
---
## Content

The HTML input form `readonly` attribute is used to indicate that the user cannot modify the value. When this attribute is specified, the value of the input field will display, it can be submitted, and is uneditable.

Even though the input field cannot be modified, the user can still highlight it, tab to it, and copy the value from it.

Example:
```
<form 
  action="/page.php">
  Phone Number: 
  <input 
    type="number" 
    name="contact" 
    value="7863341212" 
    readonly><br>
</form>
```

The `readonly` attribute can also be applied to the `<textarea>` element.

Example:
```
Phone Number: 
<textarea readonly>
  7863341212 
</textarea>
```
---
## Practice

What can a user NOT do to this text field, even though it will still send the original data upon submittion?

`<input type="text" name="company" value="Enki" readonly>`

???

* change the text
* tab to the textfield
* highlight the text when selected
* copy the text from from the textfield

---
## Revision

What attribute allows the input field to display a value which will be sent upon submit, but the user cannot change it?

???

* readonly
* disabled
* read-only
* lock
* @readonly

