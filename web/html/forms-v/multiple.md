---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.7: 10
  web.html-forms.8: 10

aspects:
  - introduction
  - workout
  - deep

---
# Multiple
---
## Content

When setting HTML input form attributes, you can set the `multiple` attribute. When this attribute is specified, the user is allowed to enter more than one value. This attribute is applied only if the form input is of type `email` or `file`.

Example:
```
<form
   action="/action_page.php">
  Select images:
    <input type="file"
      name="img" multiple>
  <input type="submit">
</form>
```

In the example above we have allowed to user to input multiple pictures at once, instead of one by one.

If the input type is set to `email` the user can enter multiple emails by separating them with a comma. Like so: firstmail@example.com, secondmail@example.com, thirdmail@example.com, etc.

If the input type is set to `file` the user can select multiple files by pressing down ctrl or shift when selecting.

---
## Practice

Which statement is not true regarding the `multiple` attribute within forms?

???

* Works with min and max range input type, separated by |.
* When present, more than one value can be added in the `<input>` element.
* Works with email input type, separated by commas.
* Works with file input type, by holding down CTRL or SHIFT keys while selecting.

---
## Revision

Which form attribute is used to allow the user the option to enter more than one value in an input element, such as input and file?

```
<form action="file.php">
 Select images:
  <input type="file"
    name="img" ???>
 <input type="submit">
</form>
```

* multiple
* options
* multi
* more
* assorted
* plural

---
## Quiz

### How much do you know about HTML input form attributes?

Which statement is not true regarding the `multiple` input form attribute?

???

* Works with data input type, separated by semicolons.
* When present, more than one value can be added in the `<input>` element.
* Works with email input type, separated by commas.
* Works with file input type, by holding down CTRL or SHIFT keys while selecting.
