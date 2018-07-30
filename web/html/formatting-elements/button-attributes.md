---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.layout-html.0: 10
  web.html-forms.2: 10

aspects:
  - introduction
  - workout
links:
  - '[CodePen: Form Button Attributes](https://codepen.io/enkidevs/pen/BPWEzL){code}'
  - '[MDN docs for button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button){website}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Button attributes
---
## Content

`<button>` elements have a number of useful attributes.

* `value`
* `disabled`
* `form`
* `name`
* `type`

![button-simple](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2257%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2257%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2232%22%3ESubmit%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2250%22%20height%3D%2217%22%20x%3D%2219%22%20y%3D%2220%22%20stroke%3D%22%23D9D9D9%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/BPWEzL)-->

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
