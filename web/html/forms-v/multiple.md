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
  - deep

links:

---
# The `multiple` Attribute
---
## Content

When setting HTML input form attributes, you can set the `multiple` attribute to allow the user to enter more than one value for input types `email` and/or `file`.

Example:
```html
<form
   action="/action_page.php">
  Select images:
    <input type="file"
      name="img" multiple>
  <input type="submit">
</form>
```

![form-multiple](https://img.enkipro.com/2b91c43fdc92604442f64d6299748dce.png)

[View CodePen](https://codepen.io/enkidevs/pen/yqBreR)

In the example above we have allowed the user to input multiple pictures at once, instead of one by one. The user can select multiple files by pressing down ctrl or shift when selecting.

If the input type is set to `email` the user can enter multiple emails by separating them with a comma. Like so: firstmail@example.com, secondmail@example.com, thirdmail@example.com, etc.

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

```html
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

* Works with data input type, separated by semicolons.
* When present, more than one value can be added in the `<input>` element.
* Works with email input type, separated by commas.
* Works with file input type, by holding down CTRL or SHIFT keys while selecting.
