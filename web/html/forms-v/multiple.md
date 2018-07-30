---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.7: 10
  web.html-forms.8: 10

aspects:
  - introduction
  - workout
  - deep
  
links:
  - '[CodePen: Form multiple attributes](https://codepen.io/enkidevs/pen/yqBreR){code}'
  
---
# Multiple
---
## Content

When setting HTML input form attributes, you can set the `multiple` attribute to allow the user to enter more than one value for input types `email` and/or `file`.

Example:
```
<form
   action="/action_page.php">
  Select images:
    <input type="file"
      name="img" multiple>
  <input type="submit">
</form>
```

![form-multiple](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22101%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22101%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3ESelect%20images%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2250%22%3EChoose%20Files%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2271%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2258.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%22116%22%20y%3D%2250%22%3ENo%20file%20chosen%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2288%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2237.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/yqBreR)-->

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

```
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
