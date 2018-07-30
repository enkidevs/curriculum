---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  javascript.dom.3: 10

aspects:
  - introduction
  - workout
  - deep
  
links:
  - '[CodePen: Form oninput](https://codepen.io/enkidevs/pen/rrBbWb){code}'

---
# Oninput
---
## Content

The HTML `oninput` event occurs immediately after the value of an element has changed.

Here's an `oninput` event that will executing a JavaScript function after the user puts in a value:
```
<input
  type="text"
  oninput="jsFunction()">
```

![form-oninput](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%22121%22%3E%3Cdefs%3E%3Cpath%20id%3D%22b%22%20d%3D%22M20%2060h131v19H20z%22%2F%3E%3Cfilter%20id%3D%22a%22%20width%3D%22109.2%25%22%20height%3D%22163.2%25%22%20x%3D%22-4.6%25%22%20y%3D%22-31.6%25%22%20filterUnits%3D%22objectBoundingBox%22%3E%3CfeOffset%20in%3D%22SourceAlpha%22%20result%3D%22shadowOffsetOuter1%22%2F%3E%3CfeGaussianBlur%20in%3D%22shadowOffsetOuter1%22%20result%3D%22shadowBlurOuter1%22%20stdDeviation%3D%222%22%2F%3E%3CfeComposite%20in%3D%22shadowBlurOuter1%22%20in2%3D%22SourceAlpha%22%20operator%3D%22out%22%20result%3D%22shadowBlurOuter1%22%2F%3E%3CfeColorMatrix%20in%3D%22shadowBlurOuter1%22%20values%3D%220%200%200%200%200.439215686%200%200%200%200%200.662745098%200%200%200%200%200.905882353%200%200%200%201%200%22%2F%3E%3C%2Ffilter%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22121%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cuse%20fill%3D%22%23000%22%20filter%3D%22url%28%23a%29%22%20xlink%3Ahref%3D%22%23b%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%2370A9E7%22%20stroke-linejoin%3D%22square%22%20d%3D%22M20.5%2060.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2226%22%20y%3D%2275%22%3EHello%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2299%22%3EYou%20wrote%3A%20Hello%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EEnter%20text%20to%20see%20how%20the%20JavaScript%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2248%22%3Efunction%20is%20called.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The `oninput` event is similar to the `onchange` event, except the `oninput` event occurs immediately after the value has changed, and the `onchange` event occurs after the element loses focus after the content has changed. Another difference is that the `onchange` event works with `<select>` elements.

<!--[View CodePen](https://codepen.io/enkidevs/pen/rrBbWb)-->

---
## Practice

Match the form attributes with their descriptions.

oninput: ???
onchange: ???

* occurs immediately after the value of an element has changed.
* occurs after the content has been changed and the element loses focus.
* occurs immediately when the element gains focus.

---
## Revision

Which form attribute is used to call a JavaScript when a user writes something within an `<input>` field?

```
<input
  type="text"
  ???="jsFunction()">
```

* oninput
* script
* action
* function
* call

---
## Quiz

### How much do you know about events in HTML?

Which event occurs immediately after the value of an element has changed.

* oninput
* onoutput
* script
* function
