---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.2: 10

tags:
  - introduction

links:
  - '[MDN docs for button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button){website}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Button attributes
---
## Content

`<button>` elements have a number of attributes. They have the global form attributes, and the following special button attributes:


`disabled` is used to forbid the user from pressing the button. Also, if the button is in a form or `<fieldset>` element which has a `disabled` attribute, then the button inherits it.  

`form` attribute is used to associate a button to a form. The value of the buttons `form` attribute has to be the same as the `id` attribute of the `<form>` element. This allows you to associate any `<button>` element with any `<form>` element within the same document. This means you can also associate a button to a `<form>` element even though the button is not a direct descendant of that form.

`name` is used to give the button a name, and that name is also submitted with the form's data.

`type` is used to indicate the type of the button. There are 3 possible values:
  - `button`
  - `reset`
  - `submit`

The `type="button"` has no initial/default behavior. This is used when you want client-side scripts to trigger when events occur.

The `type="reset"` is used to reset all the values to default in the form the button is associated with.

The `type="submit"` is used to submit the forms data to the server. This value is also the default button type. Meaning, if no other value is set for `type` or if `type` is not present at all.)

`value` is used to set the initial value of the button.


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
Set `formtarget` to target new tab/window: ???
Set form to not validate upon submit: ???
Set method: ???

* `type="reset"`
* `type="submit"`
* `autofocus`
* `autocomplete`
* `value`
* `name
* `_blank`
* `formnovalidate`
* `formmethod`
* `_newtab`
* `method`
* `novalidate`
* `submit`
* `reset`
* `initialvalue`
* `string`
* `send`
* `off`
