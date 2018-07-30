---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.6: 10

aspects:
  - introduction
  - workout

links:
  - '[CodePen: Form Simple Dropdown](https://codepen.io/enkidevs/pen/XBpjYr){code}'
  - '[CodePen: Form Simple Dropdown with default selected](https://codepen.io/enkidevs/pen/RBKGJg){code}'
  - '[MDN docs for option](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option){website}'
  - '[MDN docs for select](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select){website}'

---
# DropDown List
---
## Content

In HTML, the dropdown list is created with the `<select>` and `<option>` elements combined.

The `<select>` element is used to create a control with a menu of options/items in which each item is represented with the `<option>` element. The value in the first option will display within the drop-down first. 

Example:
```
<form>
<select name="apples">
 <option
  value="green">Green
 </option>
 <option
  value="red">Red
 </option>
 <option
  value="yellow">Yellow
 </option>
</select>
</form>
```

![drop-down-colors](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%20111%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22111%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%233B99FC%22%20stroke%3D%22%233497FF%22%20d%3D%22M71%2037.11593V21h11.07254c1.5431%201.05927%202.31463%202.59597%202.31463%204.6101%200%201.0728.36942%209.10886-1.15003%2010.46117-1.52922%201.361-5.60826%201.70921-12.23714%201.04466z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2228%22%20y%3D%2233%22%3EGreen%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2264%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2220.5%22%20stroke%3D%22%23D9D9D9%22%20rx%3D%224%22%2F%3E%3Cpath%20stroke%3D%22%23FFF%22%20stroke-linecap%3D%22square%22%20d%3D%22M75.375%2026.625l2.25-2.25m-.25%200l2.25%202.25M75.5%2030l2.25%202.25m2-2.25l-2.25%202.25%22%2F%3E%3Crect%20width%3D%2275%22%20height%3D%2255%22%20x%3D%2228.5%22%20y%3D%2235.5%22%20fill%3D%22%23F9FBFB%22%20stroke%3D%22%23D2D2D2%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2249%22%20y%3D%2252%22%3EGreen%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2249%22%20y%3D%2268%22%3ERed%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2249%22%20y%3D%2284%22%3EYellow%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%233C3E3E%22%20d%3D%22M34%2049h1v1h-1zm1%200h1v1h-1zm0%201h1v1h-1zm1%200h1v1h-1zm1%200h1v1h-1zm-1%201h1v1h-1zm1%200h1v1h-1zm1-2h1v1h-1zm1-1h1v1h-1zm0-1h1v1h-1zm1%200h1v1h-1zm0-1h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%234D3E3E%22%20d%3D%22M40%2045h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23C5A680%22%20d%3D%22M40%2044h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23E0DEE2%22%20d%3D%22M41%2043h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%233C3E3E%22%20d%3D%22M41%2045h1v1h-1zm0-1h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%2386B4CF%22%20d%3D%22M42%2045h1v1h-1zm-2%203h1v1h-1zm-2%203h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23738AAE%22%20d%3D%22M37%2052h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23B59066%22%20d%3D%22M34%2050h1v1h-1zm3-1h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23DAC69B%22%20d%3D%22M33%2049h1v1h-1zm5-2h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%235C3E3D%22%20d%3D%22M38%2048h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23E9E3D0%22%20d%3D%22M33%2048h1v1h-1zm6-3h1v1h-1zm-2%203h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23938080%22%20d%3D%22M34%2048h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23A7C0D4%22%20d%3D%22M35%2048h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23B0CDD7%22%20d%3D%22M36%2049h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%239B7E6B%22%20d%3D%22M35%2051h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%239B7E6B%22%20d%3D%22M35%2051h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23946444%22%20d%3D%22M39%2046h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23BDD8E8%22%20d%3D%22M41%2047h1v1h-1zm-2%203h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23E4EEEE%22%20d%3D%22M42%2046h1v1h-1zm-2%203h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%236E9BC3%22%20d%3D%22M42%2044h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23425B92%22%20d%3D%22M41%2046h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%233D3D57%22%20d%3D%22M38%2050h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23425B92%22%20d%3D%22M39%2049h1v1h-1z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/XBpjYr)-->

In the example above, we have a dropdown menu with 3 possible options.
You can also set another option item to display pre-selected first, with the `selected` attribute:
```
<form>
<select name="apples">
 <option
  value="green">Green
 </option>
 <option
  value="red">Red
 </option>
 <option
  value="yellow" selected>Yellow
 </option>
</select>
</<form>
```

![drop-down-intro-list](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%2058%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2258%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%233B99FC%22%20stroke%3D%22%233497FF%22%20d%3D%22M71%2037.11593V21h11.07254c1.5431%201.05927%202.31463%202.59597%202.31463%204.6101%200%201.0728.36942%209.10886-1.15003%2010.46117-1.52922%201.361-5.60826%201.70921-12.23714%201.04466z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2228%22%20y%3D%2233%22%3EYellow%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2264%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2220.5%22%20stroke%3D%22%23D9D9D9%22%20rx%3D%224%22%2F%3E%3Cpath%20stroke%3D%22%23FFF%22%20stroke-linecap%3D%22square%22%20d%3D%22M75.375%2026.625l2.25-2.25m-.25%200l2.25%202.25M75.5%2030l2.25%202.25m2-2.25l-2.25%202.25%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/RBKGJg)-->

---
## Practice

Write the form code that creates an item of a dropdown.

```
<???>
  <??? value="a value">DropDown Item #1<???>
<???>
```

* select
* option
* /option
* /select
* value
* input
* type
* dropdown
* /dropdown
* item
* /item

---
## Revision

Which line of code creates form’s dropdown list with a single item?

???

* `<select><option value="item1">DropDown Item #1</option></select>`
* `<input><option value="item1">DropDown Item #1</option></input>`
* `<dropdown><option value="item1">DropDown Item #1</option></dropdown>`
* `<select><dropdown value="item1">DropDown Item #1</dropdown></select>`

---
## Quiz

### How much do you know about dropdowns?

When a form’s drop-down has an option other than the first item that needs to display by default, what attribute is used?

```
<select>
  <option
    value="item1" ???>
    Item #1
   </option>
</select>
```

* selected
* checked
* preselected
* default
* select
