---
author: elliehoward

levels:

  - beginner

  - basic

  - medium


tags:

  - introduction

  - workout


type: exercise

category: must-know



standards:
  cs.identify-linear-collection-data-structures-usage.0: 1000
  cs.identify-linear-collection-data-structures-usage.3: 1000

links:

- '[MDN - Document.getElementById()](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementById)'
- '[MDN - Document.getElementsByClassName()](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByClassName)'
- '[MDN - Document.getElementsByTagName()](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByTagName)'
---


## Exercise

# Modify Elements

In the last exercise we had a few tags we wanted want to turn blue, we gave them a class of blue and selected them by that class name. Now let's loop through the array that is stored in blueTags and modify each element to have blue text:

```html
<html>
<body>

<p>Hello World!</p>
<p class="blue">This should be blue</p>
<p>This is not blue</p>
<p class="blue">This should be blue</p>
<p>This is not blue</p>
<p class="blue">This should be blue</p>

<script>
var blueTags = document.getElementsByClassName("blue");
//start the loop
for (var i = 0; i < blueTags.length; i++) {
  blueTags[i].style.color = 'blue';
}
</script>

</body>
</html>
```
 We could also change the content of the tag to say "This is blue" rather than "This should be blue".
 ```javascript
 var blueTags = document.getElementsByClassName("blue");
 for (var i = 0; i < blueTags.length; i++) {
   blueTags[i].style.color = 'blue';
   blueTags[i].innerHTML = 'This is blue';
 }

 ```


---
## Practice

Change the content of each paragraph tag to say "My content was changed!":
```html
<html>
<body>

<p>Hello World!</p>
<p>I am a paragraph tag</p>
<p>my content can be changed</p>

<script>
var paragraphTags = document.???(???);
for (var i = 0; i < paragraphTags.length; i++) {
  ???[i].??? = 'My content was changed!';
}
</script>

</body>
</html>
```

* getElementsByTagName
* p
* paragraphTags
* innerHTML
* document
* i
* getElementsByClassName

---
## Revision

Change each element with the classname "red" to have a red text color.

```html
<html>
<body>

<p>Hello World!</p>
<p class="red">This should be red</p>
<p>This is not red</p>
<p class="red">This should be red</p>
<p>This is not red</p>
<p class="red">This should be red</p>

<script>
var redTags = document.???("red");
//start the loop
for (var i = 0; i < redTags.length; i++) {
  redTags[i].style.color = 'red';
}
</script>

</body>
</html>
```

* `getElementsByClassName`
* `getElementsByTagName`
* `getElementById`
