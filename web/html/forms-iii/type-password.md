---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.0: 10
  web.html-forms.7: 10

aspects:
  - introduction
  - workout
  - deep
  
links:
  - '[CodePen: Form Password](https://codepen.io/enkidevs/pen/dKwgVW){code}'
  
---
# Type=password
---
## Content

The HTML input form `type="password"` attribute is used to display each character either as an asterisk, or a circle. This attribute is very similar to the `type="text"` attribute, but hides each character entered.

Example:
```
<form
  action="/action.php">
  Username:
  <input
    type="text"
    name="username">
  Password:
  <input
    type="password"
    name="password">
  <input
    type="submit"
    value="Submit">
</form>
```

![form-password](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22154%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22154%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2230%22%3EUsername%3A%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2280%22%3EPassword%3A%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2090.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2225%22%20y%3D%22104%22%3E%E2%97%8F%E2%97%8F%E2%97%8F%E2%97%8F%E2%97%8F%E2%97%8F%E2%97%8F%E2%97%8F%E2%97%8F%E2%97%8F%E2%97%8F%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2040.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2224%22%20y%3D%2255%22%3Eadmin%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%22116.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2230%22%3EUsername%3A%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%22129%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/dKwgVW)-->

Where the Username field accepts text as normal, the Password field hides the characters typed by displaying them as bullets (•••) 

---
## Practice

Which statement is true about the "type=password" attribute:

???

* Each input character appears as bullet.
* Each input character appears as a dollar sign
* Each input character does not appear.
* Must use `width` to adjust input text size vs `font-size`.

---
## Revision

When sensitive data is input into a text field that should display as `*` in place of characters, which form attribute is used?

???

* password
* private
* hidden
* secret
* astrisk

---
## Quiz

### How much do you know about HTML input form attributes?

Mark which statement is true about the "type=password" attribute:

* Each input character appears as an bullet or astrisk.
* Each input character appears with the strikethrough style.
* Each input character appears as normal but autocomplete is disabled.
* Each input character does not appear.
