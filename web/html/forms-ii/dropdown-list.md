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

links:
  - '[HTML <option> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option){documentation}'
  - '[HTML <select> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select){documentation}'

---
# DropDown List
---
## Content

In HTML, the dropdown list is created with the `<select>` and `<option>` elements combined.

The `<select>` element is used to create a control with a menu of options/items in which each item is represented with the `<option>` element. The value in the first option will display within the drop-down first.

Example:
```html
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

![drop-down-colors](https://img.enkipro.com/52f8da1e618f5913e61fb77261132738.png)

[View CodePen](https://codepen.io/enkidevs/pen/XBpjYr)

In the example above, we have a dropdown menu with 3 possible options.
You can also set another option item to display pre-selected first, with the `selected` attribute:
```html
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

![drop-down-intro-list](https://img.enkipro.com/d3402e07e88639795e1e7908586da605.png)

[View CodePen](https://codepen.io/enkidevs/pen/RBKGJg)

---
## Practice

Write the form code that creates an item of a dropdown.

```html
<???>
  <??? value="a value">
      DropDown Item #1
  <???>
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

```html
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
