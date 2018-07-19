---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - introduction

links:
  - '[MDN docs for button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button){website}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'
  
---
# Button attributes
---
## Content

`<button>` elements attributes:

1. The `autofocus` attribute is used to set the focus for that input upon page load. Of course, the user can just click anywhere else and change the focus. Also, there can be only one form input `autofocus` attribute per webpage or document.

2. The `autocomplete` is used to give the user the option to autocomplete a form with previous inputs from other(or the same) website.

3. The `disabled` is used to forbid the user from pressing the button. Also, if the button is in a form or `<fieldset>` element which has a `disabled` attribute, then the button inherits it.

4. `form` attribute is used to associate a button to a form. To do so, the value of the buttons `form` attribute has to be the same as the `id` attribute of the `<form>` element. Doing this, lets you associate any `<button>` element with any `<form>` element within the same document. This means you can also associate a button to a `<form>` element even though the button is not a direct descendant of that form.

5. `formaction` is used to specify the URL of the program which processes the information submitted by that button. Also, if you add the `formaction` attribute it will override the `action` attribute of the buttons form owner.

6. `formeenctype` is used to specify the form-data when a form is submitted. Meaning, it specifies which type of data the form submits to the server and how it's encoded(only works for submit buttons). There are 3 possible values for `formenctype`:
  1. `application/x-www-form-urlencoded` (default)
  2. `multipart/form-data` 
  3. `text/plain`
  
The default value `application/x-www-form-urlencoded` is used for any text/ASCII data. The value `multipart/form-data` is required when using forms that have a file upload control; `<input type="file">`. Also, if you add the `formenctype` attribute it will override the `enctype` attribute of the buttons form owner.

7. `formmethod` is used to specify which HTTP method will be used by the browser when submitting the form-data. There are two possible values for the `formmethod` attribute:
  1. `method="get"`
  2. `method="post"`
  
When a form is submitted the `method="get"` appends form data to the URL with `?` as separators. The method is useful for when the user wants to bookmark the result or when the form contains only ASCII characters. Also, it is not good to use the method="get" to pass sensitive information. If passed with this method the information will be visible in the browsers address bar.

The `method="post"` does not append to the URL, but rather sends the form data as an HTTP post transaction(When submitted, the data is included in the body of the form).  Also, if you add the `formmethod` attribute it will override the `method` attribute of the buttons form owner.

8. `formnovalidate` is used to specify that the form should not be validated upon submission.  Also, if you add the `formnovalidate` attribute it will override the `novalidate` attribute of the buttons form owner.

9. `formtarget` is used to indicate where to display the response upon submision of the form. There are 4 possibble values:
  - `_self`
  - `_blank`
  - `_parent`
  - `_top`
  
`_self` is the default value if the attribute is not specified and it displays the response in the same window.

`_blank` value displays the response in a new window/tab.

`_parent` value displays the response into the parent window of the current one. If there is no parent, this option will behave the same as `_self`.

`_top` value displays the response into the top-level window (that is, the window that is an ancestor of the current one and has no parent). If there is no parent, this option will behave the same as `_self`.

Also, if you add the `formtarget` attribute it will override the `target` attribute of the buttons form owner.

10. `name` is used to give the button a name, and that name is also submitted with the forms data.

11. `type` is used to indicate the type of the button. There are 3 possible values:
  - `button`
  - `reset`
  - `submit`
  
The `type="button"` has no initial/default behavior. This is used when you want client-side scripts to trigger when events occur.

The `type="reset"` is used to reset all the values to default in the form the button is associated with.

The `type="submit"` is used to submit the forms data to the server. This value is also the default button type. Meaning, if no other value is set for `type` or if `type` is not present at all.)

12. `value` is used to set the initial value of the button.


---
## Practice

Which buttons are easier to style?

???

Match answers with questions:

Button resets form values: ???
Button sends form data: ???
Set focus: ???
Opt user with previous answers: ???
Turn off button: ???
Set button type: ???


* `<button></button>`
* `type="reset"`
* `type="submit"`
* `autofocus`
* `autocomplete`
* `disabled`
* `type=""`
* `<input type="button">`
* `name`
* `setfocus`

---
## Revision

Match the question with the correct answer:

Button resets form values: ???
Button sends form data: ???
Set focus: ???
Opt user with previous answers: ???
Turn off button: ???
Set the initial value: ???
Set name: ???
Set formtarget to target new tab/window: ???
Set form to not validate upon submit: ???
Set method: ???

* `<button></button>`
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

