---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.4: 10

aspects:
  - introduction
  - workout

links:
  - '[CodePen: Simple Checkboxes](https://codepen.io/enkidevs/pen/yqoNpR){code}'
  - '[CodePen: Form Checkboxes](https://codepen.io/enkidevs/pen/qyRaXO){code}'
  - '[MDN docs for checkboxes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox){website}'

---
# Check Boxes
---
## Content

The HTML `checkbox` type of input forms are square boxes that can be ticked or checked to be activated. They allow you to either select none, a single value, or more multiple values at once.

```
<form>
    <input type="checkbox"
      id="box1"
      name="report"
      value="data1">
    <label
      for="box1">
      Checkbox #1
    </label>
      <input type="checkbox"
      id="box2"
      name="report"
      value="data2">
    <label
      for="box2">
      Checkbox #2
    </label>
</form>
```

![checkbox-both](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%2052%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2252%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2238%22%20y%3D%2230%22%3EChecked%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22125%22%20y%3D%2230%22%3ENot%20Checked%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%22106.5%22%20y%3D%2219.5%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Cg%20transform%3D%22translate%2820%2019%29%22%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%22.5%22%20y%3D%22.5%22%20fill%3D%22%233B99FC%22%20stroke%3D%22%233795F8%22%20rx%3D%222%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M7%208h1v1H7zm1-2h1v1H8zM6%209h1v1H6zM5%209h1v1H5zM4%208h1v1H4zM3%207h1v1H3z%22%2F%3E%3Cpath%20fill%3D%22%23AFCDEC%22%20d%3D%22M3%208h1v1H3zm1%201h1v1H4zm0-2h1v1H4zm3-1h1v1H7zm1-1h1v1H8zm1-2h1v1H9zm1%200h1v1h-1zm0%201h1v1h-1zM6%208h1v1H6zM5%208h1v1H5z%22%2F%3E%3Cpath%20fill%3D%22%231977DA%22%20d%3D%22M4%2010h1v1H4zm1%201h1v1H5zm1%200h1v1H6zm1-1h1v1H7zm1-2h1v1H8zm1-1h1v1H9zm1-2h1v1h-1zM3%209h1v1H3z%22%2F%3E%3Cpath%20fill%3D%22%23AFCDEC%22%20d%3D%22M5%2010h1v1H5zm1%200h1v1H6z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M7%207h1v1H7zm2-2h1v1H9zm0-1h1v1H9z%22%2F%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)

**Note:** A similar input form type is `radio`. This input type is also clickable, however, unlike with checkboxes, if multiple options are present, the radio buttons can have only one option checked at a time.

Example with one checkbox:
```
<form>
  <div>
    <input type="checkbox"
      id="reportProblem"
      name="report"
      value="bankaccount">
    <label
      for="reportProblem">
      Report a problem
    </label>
  </div>
  <div>
    <button type="submit">
      Report
    </button>
  </div>
</form>
```

![checkbox-report-a-problem](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%2078%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2278%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2240%22%20y%3D%2234%22%3EReport%20a%20problem%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2228%22%20y%3D%2253%22%3EReport%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2213%22%20height%3D%2213%22%20x%3D%2222%22%20y%3D%2223%22%20stroke%3D%22%23A5A5A5%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2250%22%20height%3D%2217%22%20x%3D%2220%22%20y%3D%2241%22%20stroke%3D%22%23D9D9D9%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/qyRaXO)-->

In the example above, the 'name' & 'value' attributes work as a pair in keeping track of the data sent and are both important to use with checkboxes. In this case, the name/value pair would be `report=bankaccount`. This is something the client never sees as the data is sent upon submission of the form. 

If no checkbox is ticked/checked upon form submission, the name/value pair is `value=unchecked` and the value won't be submitted to the server at all.

If the `value` attribute is obmitted, then the default value for the checkbox would be `on` and upon submission, the name/value pair would be `report=on`.

---
## Practice

Write the form code that creates a checkbox.

```
<??? ???="???">
```

* input
* type
* checkbox
* check
* select

---
## Revision

Which line creates an HTML form’s checkbox?

???

* `<input type="checkbox">`
* `<input type="check">`
* `<form input="check">`
* `<form input="checkbox">`
