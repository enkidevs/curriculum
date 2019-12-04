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
  - deep

links:
  - '[HTML <input type="range"](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/range){documentation}'

---
# HTML `range` type input
---
## Content

The HTML form input type `range` is used to specify any numeric value between two numbers. That value cannot be less than or greater than the two chosen values. It is usually represented by a slider. This kind of value control is not precise, so it should only be used if the exact value is not important and it requires some JavaScript to display the dynamic value.

Example:
```html
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

![form-range](https://img.enkipro.com/1f70f5260d5a3e085e931752cec13b62.png)

[View CodePen](https://codepen.io/enkidevs/pen/bKOxPL)

Breaking down the example:
```html
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


```html
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
```html
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

![form-range-tickmarks](https://img.enkipro.com/63342ac6a64cfea220a8974299990b04.png)

[View CodePen](https://codepen.io/enkidevs/pen/pKqxEY)

In the example above, we defined a slider with 5 hash marks, at 0, 25, 50, 75 and 100. This slider has values you can easily set with the hash marks. Each point is represented by the `<option>` element and its value set to the desired range's value where the hash mark should be.

Example:
```html
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

```html
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

---
## Revision

Which form input type defines a slider control?

???

* range
* max-min
* controls
* slider
* drag
