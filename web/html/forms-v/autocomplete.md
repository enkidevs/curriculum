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
# The `autocomplete` Attribute
---
## Content

The HTML input form `autocomplete` attribute is used to enable the browsers autofill option.

`autocomplete="on"`

When this option is on, the browser can autofill the value you want to type, as you type it. The browser should then display the option `autofill` or similar text with values based on an earlier input.

The autocomplete attribute can work for a name, search, email, URL, password, color, address and other input fields.

Example:
```html
<form action="/credit_card.php"
  autocomplete="on">
   Full name: <input type="text"
    name="fullname"><br>
   Card number: <input type="number"
    name="ccnumber"><br>
   Exparation date: <input type="month"
    name="ccdate"><br>
   CV: <input type"number"
    name="cvnumber"
    autocomplete="off"><br>
   <input type="submit">
</form>
```

![form-autocomplete](https://img.enkipro.com/0e0cf0b74cfffebc9fa15e3a91e24433.png)

[View CodePen](https://codepen.io/enkidevs/pen/ejOXPj)

In the example above, we have a credit card input field with autocomplete set to "on". That means once the page loads and the user starts typing he will be prompted by the browser to click the `fill in the field automatically` and can choose to populate the fields with previously used answers.

Also, a credit card used on one website can autocomplete on a different website if that website has similar input fields. For security reasons, turning off autocomplete on such inputs as the CV code is wise.

The default value for autocomplete is `on`. 

---
## Practice

Which statement is true regarding autocomplete?

???

* Can automatically complete fields based on the user's history
* The data is stored on the webpage.
* Items like credit card numbers should not be auto-completed.

---
## Revision

Which input form attribute is used to store input field data and re-populate within similar fields on other websites.

???

* autocomplete
* data
* cookies
* sessionStorage
* objects
* storage

---
## Quiz

### How much do you know about HTML input form attributes?

Which statement is false regarding autocomplete?

* Items like credit card numbers should not be auto-completed.
* Can automatically complete fields based on the user's history
* The default value is "on"
* Autocomplete works with passwords, usernames, e-mail, search and more.
