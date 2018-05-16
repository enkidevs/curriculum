---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.2: 10

aspects:
  - workout
  - deep
  - obscura

---
# Formnovalidate & novalidate
---
## Content

The HTML `novalidate` form input attribute is used to specify that the input should not be validated when submitted.

When specified, the `formnovalidate` attribute overrides the `novalidate` attribute.
It can be used with the `type"submit"` and `type"image"` attributes.

Example:

```
<form
 action="/action_page.php" novalidate >
 E-mail:
 <input type="email"
  name="user_email">
 <input type="submit" formnovalidate >
</form>
```

---
## Practice

Complete the code by adding the appropriate input form attributes to disable the validation within the form element and in the submit button.

```
<form
 action="/action_page.php" ??? >
 E-mail:
 <input type="email"
  name="user_email">
 <input type="submit" ??? >
</form>
```

* novalidate
* formnovalidate
* validate
* form-data
* datavalidate

---
## Revision

Complete the code by adding the appropriate input form attributes to disable the validation within the form element and in the submit button.

```
<form
 action="/action_page.php" ??? >
 E-mail:
 <input type="email"
  name="user_email">
 <input type="submit" ??? >
</form>
```
* novalidate
* formnovalidate
* validate
* formvalidate="false"


---
## Quiz

### How much do you know about HTML form input attributes?

Which statement is not true regarding the `novalidate` attribute?

* The `novalidate` attribute overrides the `formnovalidate` attribute.
* The HTML `novalidate` form input attribute is used to specify that the input should not be validated when submitted.
* When specified, the `formnovalidate` attribute overrides the `novalidate` attribute.
* It can be used with the `type"submit"` and `type"image"` attributes.
