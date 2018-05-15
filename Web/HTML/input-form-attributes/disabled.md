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

link:
  - '[MDN docs for disabled](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input){website}'
  
---
# Disabled
---
## Content

The HTML input form `disabled` attribute is used to indicate that a certain form control is unavailable for interaction. This attribute is used to allow an input field to display a value that the user cannot change. Also, this default value is not sent upon submission of the form.

The attribute is of type boolean.

Example:
```
<input 
  type="text" 
  name="company" 
  value="Enki" 
  disabled>
```

In the example above, we have prevented the user from editing the input text field and the value of the input won't be sent upon submission.

Furthermore, you can use the `disabled` attribute to prevent the use of the `<input>` element until a certain condition is satisfied. After the condition is met, you can use JavaScript to remove the disabled value and make the `<input>` usable.

---
## Practice

What does the disabled attribute do in this code?

`<input type="text" name="company" value="Enki" disabled>`

???

+ Prevents the user from editing the textfield 
- Hides the textfield
- hides the input element
- Displays as a grey textbox by default

---
## Revision

What attribute allows the input field to display a value which the user cannot change and the default value is not sent upon submittion?

???

* disabled
* readonly
* read-only
* lock
* @disabled
