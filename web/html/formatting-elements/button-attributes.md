---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  
links:
  - '[HTML <button> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button){documentation}'

---
# `<button>` attributes
---
## Content

`<button>` elements have a number of useful attributes.

* `value`
* `disabled`
* `form`
* `name`
* `type`

![button-simple](https://img.enkipro.com/34850e7186f600675efdce8a5ddd2f84.png)

[View CodePen](https://codepen.io/enkidevs/pen/BPWEzL)

### disabled

`disabled` is used to display the button, but disable the button from being pressed by the user. Also, if the button is in a form, or `<fieldset>` element, which has a `disabled` attribute, then the button inherits it.

### name

`name` is used to give the button a name, and that name is also submitted with the form's data.

### value

`value` is used to set the initial value of the button.

### type

`type` is used to indicate the type of the button. There are 3 possible values:
  - `submit`
  - `reset`
  - `button`

The `type="submit"` is used to submit the forms data to the server. This value is also the default button type if no other value is set for `type`.

The `type="reset"` is used to reset all the values to default in the form the button is associated with.

The `type="button"` has no initial/default behavior. This is used when you want client-side scripts to trigger when events occur.

### form

`form` attribute is used to associate a button to a form. The value of the buttons `form` attribute has to be the same as the `id` attribute of the `<form>` element. This allows you to associate a button to a `<form>` element even though the button is not a direct descendant of that form.


---
## Practice

Match answers with questions:

Button resets form values: ???
Button sends form data: ???
Turn off button: ???


* `type="reset"`
* `type="submit"`
* `disabled`
* `name`
* `setfocus`

---
## Revision

Match the question with the correct answer:

Button resets form values: ???
Button sends form data: ???
Set focus: ???
Show user previous inputs: ???
Turn off button: ???
Set the initial value: ???
Set name: ???

* `type="reset"`
* `type="submit"`
* `autofocus`
* `autocomplete`
* `disabled`
* `value`
* `name
* `_blank`
* `_newtab`
* `method`
* `novalidate`
* `submit`
* `reset`
* `initialvalue`
* `string`
* `send`
* `off`
