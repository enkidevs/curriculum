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
  
links:
  - '[CodePen: novalidate](https://codepen.io/enkidevs/pen/xzmmKy){code}'
  
---
# Formnovalidate & novalidate
---
## Content

The HTML `novalidate` form input attribute is used to specify that the input should not be validated when submitted.

When specified, the `formnovalidate` attribute overrides the `novalidate` attribute. It can be used with the `type="submit"` and `type="image"` attributes.

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

![form-novalidate](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22106%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22106%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EE-mail%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2039.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2277%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2253%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2264.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/xzmmKy)-->

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
