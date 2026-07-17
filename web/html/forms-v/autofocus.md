---
author: Stefan-Stojanovic
type: normal
category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The autofocus Attribute


---

## Content

The HTML input form `autofocus` attribute is used to specify an `<input>` element to have focus once the web page is loaded.

Example:

```html
<form action="/credit_card.php">
  Full name: <input type="text"
    name="fullname" autofocus>
  Card number: <input type="number"
    name="ccnumber">
  Exparation date: <input type="month"
    name="ccdate">
  CV: <input type="number"
    name="cvnumber">
  <input type="submit">
</form>
```

![form-autofocus](https://img.enkipro.com/0bf0a3a8d228ea46283da6bf4995016f.png)

In the example above, the first text field has the autofocus set, so when the page loads, the text box will be selected by default and the user can start entering text right away without having to click the textfield.

You can assign `autofocus` as either `autofocus`, `autofocus=""` or `autofocus="autofocus"`. All three options work the same in HTML5. However, if you're using XHTML `autofocus` is required to be written as `autofocus="autofocus"`.


---

## Practice

Which statement isn't true regarding autofocus?

???

- It should be assigned to every control in the form.
- Automatically sets focus to assigned control when the page loads.
- User can start using assigned control without having to select it first.
- Can be assigned as: autofocus or autofocus="autofocus"


---

## Revision

Which input form attribute sets a selected input as active when the page loads?

```html
???
```

- autofocus
- mark
- input
- active
- focus
- auto


---

## Quiz

### How much do you know about HTML form input attributes?


Which statement regarding autofocus is not true?

- It should be assigned to every control in the form.
- Automatically sets focus to assigned control when the page loads.
- Can be assiged as: `autofocus` or `autofocus="autofocus"`
- User can start using assigned control without having to select it first.
