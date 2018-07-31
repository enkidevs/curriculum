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
  
links:
  - '[CodePen: Form Autofocus](https://codepen.io/enkidevs/pen/djbrLP){code}'
  
---
# Autofocus
---
## Content

The HTML input form `autofocus` attribute is used to specify an `<input>` element to have focus once the web page is loaded.

Example:
```
<form action="/credit_card.php">
  Full name: <input type="text"
    name="fullname" autofocus>
  Card number: <input type="number"
    name="ccnumber">
  Exparation date: <input type="month"
    name="ccdate">
  CV: <input type"number"
    name="cvnumber">
  <input type="submit">
</form>  
```

![form-autofocus](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%2251%22%3E%3Cdefs%3E%3Cpath%20id%3D%22b%22%20d%3D%22M101%2016h131v19H101z%22%2F%3E%3Cfilter%20id%3D%22a%22%20width%3D%22109.2%25%22%20height%3D%22163.2%25%22%20x%3D%22-4.6%25%22%20y%3D%22-31.6%25%22%20filterUnits%3D%22objectBoundingBox%22%3E%3CfeOffset%20in%3D%22SourceAlpha%22%20result%3D%22shadowOffsetOuter1%22%2F%3E%3CfeGaussianBlur%20in%3D%22shadowOffsetOuter1%22%20result%3D%22shadowBlurOuter1%22%20stdDeviation%3D%222%22%2F%3E%3CfeComposite%20in%3D%22shadowBlurOuter1%22%20in2%3D%22SourceAlpha%22%20operator%3D%22out%22%20result%3D%22shadowBlurOuter1%22%2F%3E%3CfeColorMatrix%20in%3D%22shadowBlurOuter1%22%20values%3D%220%200%200%200%200.439215686%200%200%200%200%200.662745098%200%200%200%200%200.905882353%200%200%200%201%200%22%2F%3E%3C%2Ffilter%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2251%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cuse%20fill%3D%22%23000%22%20filter%3D%22url%28%23a%29%22%20xlink%3Ahref%3D%22%23b%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%2370A9E7%22%20stroke-linejoin%3D%22square%22%20d%3D%22M101.5%2016.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EFull%20Name%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/djbrLP)-->

In the example above, the first text field has the autofocus set, so when the page loads, the text box will be selected by default and the user can start entering text right away without having to click the textfield.  

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
