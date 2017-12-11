# Range
author: matthewleach

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep


---
## Content

New content to go here. The author must be updated to match a valid Enki account.

---
## Practice

Complete this code where the range slider is between 1 and 100 and starts in the middle at 50 with the appropriate ID.

```<input type="???" ???="1" ???="100" ???="50" ???="myRange">
<p>Value: <span id="demo"></span></p>

<script>
 var slider = document.getElementById("myRange");
 var output = document.getElementById("demo");
 output.innerHTML = slider.value;
 
 slider.oninput = function() {
  output.innerHTML = this.value;
 }
</script>```

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
