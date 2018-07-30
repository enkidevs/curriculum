---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.0: 10
  web.html-forms.3: 10

aspects:
  - introduction
  - workout
  - deep
  
links:
  - '[CodePen: Placeholder Attribute](https://codepen.io/enkidevs/pen/LrMJqV){code}'
  
---
# Placeholder
---
## Content

The HTML input form attribute `placeholder` is used to display a short hint that describes the expected value for the selected input field. It is displayed in the input field until the user enters a value.

The placeholder attribute works for several input types:
 - `email`
 - `password`
 - `search`
 - `tel`
 - `text`
 - `URL`

Example:
```
<form
  action="/action.php">
  <input
    type="text" name="full-name"
     placeholder="Full name"><br>
  <input
    type="submit"
    value="Submit">
</form>
```

![form-placeholder](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2280%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2280%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2020.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2255%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%237E757E%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2224%22%20y%3D%2235%22%3EFull%20Name%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2242.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/LrMJqV)-->

---
## Practice

Which statement is true regarding placeholder?

???

* Provides a short hint within the input.
* Works with all elements, input, button, header, etc.
* Numbers are not accepted as a placeholder.
* Does not work with the following input types: url, tel, & password

---
## Revision

Which form attribute shares a short hint that describes the expected value of an input field and will be overwritten by their input?

```
<input
  type="text" name="fname"
  ???="Full name">
```

* placeholder
* hint
* sample
* tip
* note
