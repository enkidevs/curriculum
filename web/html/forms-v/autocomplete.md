---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.9: 10

aspects:
  - introduction
  - workout
  - deep
  
links:
  - '[CodePen: Form Autocomplete](https://codepen.io/enkidevs/pen/ejOXPj){code}'
  
---
# Autocomplete
---
## Content

The HTML input form `autocomplete` attribute is used to enable the browsers autofill option.

`autocomplete="on"`

When this option is on, the browser can autofill the value you want to type, as you type it. The browser should then display the option `autofill` or similar text with values based on an earlier input.

The autocomplete attribute can work for a name, search, email, URL, password, color, address and other input fields.

Example:
```
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

![form-autocomplete](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%22151%22%3E%3Cdefs%3E%3Cpath%20id%3D%22b%22%20d%3D%22M101%2016h131v19H101z%22%2F%3E%3Cfilter%20id%3D%22a%22%20width%3D%22109.2%25%22%20height%3D%22163.2%25%22%20x%3D%22-4.6%25%22%20y%3D%22-31.6%25%22%20filterUnits%3D%22objectBoundingBox%22%3E%3CfeOffset%20in%3D%22SourceAlpha%22%20result%3D%22shadowOffsetOuter1%22%2F%3E%3CfeGaussianBlur%20in%3D%22shadowOffsetOuter1%22%20result%3D%22shadowBlurOuter1%22%20stdDeviation%3D%222%22%2F%3E%3CfeComposite%20in%3D%22shadowBlurOuter1%22%20in2%3D%22SourceAlpha%22%20operator%3D%22out%22%20result%3D%22shadowBlurOuter1%22%2F%3E%3CfeColorMatrix%20in%3D%22shadowBlurOuter1%22%20values%3D%220%200%200%200%200.439215686%200%200%200%200%200.662745098%200%200%200%200%200.905882353%200%200%200%201%200%22%2F%3E%3C%2Ffilter%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22151%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cuse%20fill%3D%22%23000%22%20filter%3D%22url%28%23a%29%22%20xlink%3Ahref%3D%22%23b%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%2370A9E7%22%20stroke-linejoin%3D%22square%22%20d%3D%22M101.5%2016.5h130v18h-130z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%239CC1E8%22%20d%3D%22M101.5%2035.5h152v91h-152z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EFull%20Name%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23B2D7FF%22%20d%3D%22M101%2035h153v22H101z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22112%22%20y%3D%2253%22%3EJohn%20Doe%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22112%22%20y%3D%2274%22%3EJohn%20W.%20Doe%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22112%22%20y%3D%2296%22%3EJohn%20Walter%20Doe%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22106%22%20y%3D%22120%22%3EAutofill%20setting%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23E3E3E3%22%20stroke-linecap%3D%22square%22%20d%3D%22M101.5%20103.5h151.0298%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22106%22%20y%3D%2231%22%3EJohn%20Doe%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/ejOXPj)-->

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
