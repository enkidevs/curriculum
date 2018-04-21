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
  - https://developer.mozilla.org/en-US/docs/Web/HTML/Element/fieldset
  - https://www.w3schools.com/tags/tag_fieldset.asp

---
# Fieldset
---
## Content

The HTML input form `<fieldset>` element is used for grouping several controls and/or labels `<label>` within a web form.
The `<fieldset>` element is also useful to be used with `<legend>` to make the form more readable.
You can also use the `disabled` attribute with this form, to disable all form controls within it.

Example:
```
<form>
  <fieldset>
    <legend>User Info:</legend>
    Name: 
      <input type="text"><br>
    Email:
      <input type="text"><br>
    Date of birth: 
      <input type="text">
  </fieldset>
  <input type="submit">
</form>
```

In the example, we have a few of elements grouped in a sort of `box`, that the user needs to type. These are their name, email, and date of birth. After the user inputs their info into the `<input>` text fields they have a button to submit. Notice that the submit button is located outside of the `fieldset` element. This is because the submit button doesn't fall into the category `User Info` as it is an event used to submit the inputted data.

---
## Practice

Mark all statements that apply about the purpose of the fieldset element.

???
???
???

+ Useful to be used with `<legend>` to make form more readable.
+ Used to group form controls.
+ Can use the disabled attribute to disable all form controls within it.
- Visually creates a 1px black border around the `<fieldset>` element.
- Not intended for use with screen readers.

---
## Revision

What HTML element is used to group several controls, as well as labels, within a form?

???

* fieldset
* label
* legend
* description
* group
