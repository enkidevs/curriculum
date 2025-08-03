---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [formnovalidate vs
    novalidate](https://stackoverflow.com/questions/11761202/whats-the-difference-between-novalidate-and-formnovalidate-attributes-of-html5){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Attributes (formnovalidate & novalidate)


---

## Content

The HTML `novalidate` form input attribute is used to specify that the input should not be validated when submitted.

When specified, the `formnovalidate` attribute overrides the `novalidate` attribute. It can be used with the `type="submit"` and `type="image"` attributes.

Example:

```html
<form
 action="/action_page.php" novalidate >
 E-mail:
 <input type="email"
  name="user_email">
 <input type="submit" formnovalidate >
</form>
```

![form-novalidate](https://img.enkipro.com/987efbd8f9042c25e26b95c9607ae550.png)

---

## Practice

Complete the code by adding the appropriate input form attributes to disable the validation within the form element and in the submit button.

```html
<form
 action="/action_page.php" ??? >
 E-mail:
 <input type="email"
  name="user_email">
 <input type="submit" ??? >
</form>
```

- novalidate
- formnovalidate
- validate
- form-data
- datavalidate


---

## Revision

Complete the code by adding the appropriate input form attributes to disable the validation within the form element and in the submit button.

```html
<form
 action="/action_page.php" ??? >
 E-mail:
 <input type="email"
  name="user_email">
 <input type="submit" ??? >
</form>
```

- novalidate
- formnovalidate
- validate
- formvalidate="false"


---

## Quiz

### How much do you know about HTML form input attributes?


Which statement is not true regarding the `novalidate` attribute?

- The `novalidate` attribute overrides the `formnovalidate` attribute.
- The HTML `novalidate` form input attribute is used to specify that the input should not be validated when submitted.
- When specified, the `formnovalidate` attribute overrides the `novalidate` attribute.
- It can be used with the `type"submit"` and `type"image"` attributes.
