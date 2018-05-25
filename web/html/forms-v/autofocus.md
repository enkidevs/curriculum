---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.9: 10
  javascript.dom.3: 10

aspects:
  - introduction
  - workout
  - deep

---
# Autofocus
---
## Content

The HTML input form `autofocus` attribute is used to specify an `<input>` element to have focus once the web page is loaded.

Example:
```
<form action="/credit_card.php">
  Full name: <input type="text"
    name="fullname" autofocus><br>
  Card number: <input type="number"
    name="ccnumber"><br>
  Exparation date: <input type="month"
    name="ccdate"><br>
  CV: <input type"number"
    name="cvnumber"><br>
  <input type="submit">
</form>  
```

In the example above, we have a credit card input field with the focus set for the `Full name` input field. That means once the page is loaded the user won't have to click on the input field but can rather start typing right away.

You can assign `autofocus` as either `autofocus`, `autofocus=""` or `autofocus="autofocus"`. All three options work the same in HTML5 however,  if you're using XHTML `autofocus` is required to be written as `autofocus="autofocus"`.


---
## Practice

Which statement isn't true regarding autofocus?

???

* It should be assigned to every control in the form.
* Automatically sets focus to assigned control when the page loads.
* User can start using assigned control without having to select it first.
* Can be assiged as: `autofocus` or `autofocus="autofocus"`

---
## Revision

Which input form attribute sets a selected input as active when the page loads?

???

* autofocus
* mark
* input
* active
* focus
* auto

---
## Quiz

### How much do you know about HTML form input attributes?

Which statement regarding autofocus is not true?

* It should be assigned to every control in the form.
* Automatically sets focus to assigned control when the page loads.
* Can be assiged as: `autofocus` or `autofocus="autofocus"`
* User can start using assigned control without having to select it first.
