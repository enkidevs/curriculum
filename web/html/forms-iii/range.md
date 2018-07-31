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
  - '[CodePen: Range Slider](https://codepen.io/enkidevs/pen/bKOxPL){code}'
  - '[CodePen: Range Slider w/ Tickmarks](https://codepen.io/enkidevs/pen/pKqxEY){code}'
  - '[Range elements on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/range){documentation}'
  
---
# Range
---
## Content

The HTML form input type `range` is used to specify any numeric value between two numbers. That value cannot be less than or greater than the two chosen values. It is usually represented by a slider. This kind of value control is not precise, so it should only be used if the exact value is not important and it requires some JavaScript to display the dynamic value. 

Example:
```
<input
  type="range"
  min="1"
  max="100"
  value="50"
  id="myRange">
<p>
  Value:
  <span
    id="display">
  </span>
</p>

<script>
 var slider =
  document.getElementById("myRange");
 var output =
  document.getElementById("display");
 output.innerHTML = slider.value;

 slider.oninput = function() {
  output.innerHTML = this.value;
 }
</script>
```

![form-range](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2293%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22a%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%220%25%22%20y2%3D%2298.4375%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23747474%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23969696%22%2F%3E%3C%2FlinearGradient%3E%3ClinearGradient%20id%3D%22b%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%220%25%22%20y2%3D%2244.23997%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23F6F6F6%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23ECECEC%22%2F%3E%3C%2FlinearGradient%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2293%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23D8D8D8%22%20stroke%3D%22url%28%23a%29%22%20d%3D%22M20%2023.5c-.82843%200-1.5.67157-1.5%201.5v1c0%20.82843.67157%201.5%201.5%201.5h125c.82843%200%201.5-.67157%201.5-1.5v-1c0-.82843-.67157-1.5-1.5-1.5H20z%22%2F%3E%3Cpath%20fill%3D%22url%28%23b%29%22%20stroke%3D%22%23969696%22%20d%3D%22M83%2032c3.866%200%207-3.134%207-7%200-.76635-.12315-1.50394-.35074-2.19406C88.72873%2020.01465%2086.09964%2018%2083%2018c-3.866%200-7%203.134-7%207s3.134%207%207%207z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2266%22%3EValue%3A%2050%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/bKOxPL)-->

Breaking down the example:
```
<input
  type="range"
  min="1"
  max="100"
  value="50"
  id="myRange">
```

With this block of HTML code, we have set the input to type `range`. The initial value is set to 50. The `id` is set as `myRange` and will be used later with the JavaScript `document.getElementbyId()` method.

**Notes:**
 - If the values of min and max are not specified, the default value of min is 0 and the default value of max is 100.
 - You can also set negative numbers, such as: `min=-5` and `max=5`


```
<script>
 var slider =
  document.getElementById("myRange");
 var output =
  document.getElementById("demo");
 output.innerHTML = slider.value;

 slider.oninput = function() {
  output.innerHTML = this.value;
 }
</script>
```

This block of code is JavaScript and used to provide the necessary functionality to the slider. The variable `slider` is used to connect with the HTML element with the id of 'myRange'. The variable `output` is used to connect with the HTML element with the id of 'display' which will display the changing value of the slider. The `oninput` function sets the changing value of the slider with the display value so as soon as there is a change in the input, or in this case as soon as the slider moves, the value on the page is visually changed.

Additionally, you can edit your sliders by adding hash marks. This is done with the `list` attribute and the `<datalist>` element.

**Note:** Chrome only supports these tick marks currently.

Example:
```
<input
  type="range"
  list="tickmarks">

<datalist id="tickmarks">
  <option value="0">
  <option value="25">
  <option value="50">
  <option value="75">
  <option value="100">
</datalist>
```

![form-range-tickmarks](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2293%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22a%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%220%25%22%20y2%3D%2298.4375%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23747474%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23969696%22%2F%3E%3C%2FlinearGradient%3E%3ClinearGradient%20id%3D%22b%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%220%25%22%20y2%3D%2244.23997%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23F6F6F6%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23ECECEC%22%2F%3E%3C%2FlinearGradient%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2293%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20stroke%3D%22%23979797%22%20stroke-linecap%3D%22square%22%20d%3D%22M83.5%2017.5v2%22%2F%3E%3Cpath%20fill%3D%22%23D8D8D8%22%20stroke%3D%22url%28%23a%29%22%20d%3D%22M20%2023.5c-.82843%200-1.5.67157-1.5%201.5v1c0%20.82843.67157%201.5%201.5%201.5h125c.82843%200%201.5-.67157%201.5-1.5v-1c0-.82843-.67157-1.5-1.5-1.5H20z%22%2F%3E%3Cpath%20fill%3D%22url%28%23b%29%22%20stroke%3D%22%23969696%22%20d%3D%22M83.5%2032c3.866%200%207-3.134%207-7%200-.76635-.12315-1.50394-.35074-2.19406C89.22873%2020.01465%2086.59964%2018%2083.5%2018c-3.866%200-7%203.134-7%207s3.134%207%207%207z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2266%22%3EValue%3A%2050%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23979797%22%20stroke-linecap%3D%22square%22%20d%3D%22M26.5%2017.5v2m28.75-2v2m56.5-2v2m28.75-2v2%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/pKqxEY)-->

In the example above, we defined a slider with 5 hash marks, at 0, 25, 50, 75 and 100. This slider has values you can easily set with the hash marks. Each point is represented by the `<option>` element and it's value set to the desired range's value where the hash mark should be.

Example:
```
<input
  type="range"
  list="tickmarks">

<datalist id="tickmarks">
  <option value="0">
  <option value="25">
  <option value="50">
  <option value="75">
  <option value="100">
</datalist>
```

---
## Practice

Complete this code where the range slider is between 1 and 100 and starts in the middle at 50 with the appropriate ID.

```
<input
  type="???"
  ???="1"
  ???="100"
  ???="50"
  ???="myRange">
<p>Value: <span id="demo"></span></p>

<script>
 var slider =
  document.getElementById("myRange");
 var output =
  document.getElementById("demo");
 output.innerHTML = slider.value;

 slider.oninput = function() {
  output.innerHTML = this.value;
 }
</script>
```

* range
* min
* max
* value
* id


## Revision

Which form input type defines a slider control?

???

* range
* max-min
* controls
* slider
* drag
