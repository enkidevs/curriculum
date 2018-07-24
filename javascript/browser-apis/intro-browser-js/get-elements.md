---
author: elliehoward

levels:

  - beginner

  - basic

  - medium


aspects:

  - introduction

  - workout


type: normal

category: must-know

standards:
  javascript.dom.4: 10

links:

- '[MDN - Document.getElementById()](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementById)'
- '[MDN - Document.getElementsByClassName()](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByClassName)'
- '[MDN - Document.getElementsByTagName()](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByTagName)'

---
# Get Elements
---
## Content


There are a number of ways to select a tag or group of tags on an HTML document using the DOM.
One of the methods we have seen before, `getElementById`. Here's an example of selecting a tag with the `id` of `'message'`:
```html
<html>
<body>

<p id="message">Hello World!</p>

<script>
var message = document.getElementById("message");
</script>

</body>
</html>
```

Another way to select tags is by tag name with the method `getElementsByTagName`. This will return an array of paragraph tags, even if there is only one.
```html
<html>
<body>

<p>Hello World!</p>

<script>
var paragraphs = document.getElementsByTagName("p");
</script>

</body>
</html>
```

If you have a group of elements that you want to be able to group and select together you can give them all the same class name and use the `getElementsByClassName` method. This method also returns an array of tags that match the class name, similar to `getElementsByTagName`. For example we have a few tags we will eventually want to turn blue, lets give them a class of blue and select them by that class name:

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
</script>

</body>
</html>
```


---
## Practice

Select the element with the id `"title"`:
```html
<html>
<body>

<p id="title">Hello World!</p>

<script>
var titleElement = document.???(???);
</script>

</body>
</html>
```

* getElementById
* "title"
* title
* getElementsByTagName
* element
* getElementsByClassName

---
## Revision

Select all paragraph tags and save them to a variable.

```html
<html>
<body>

<p>Hello World!</p>
<p>welcome to my page</p>
<p>All about coffee</p>
<p>and where you should go to sample the best coffee</p>

<script>
???
</script>

</body>
</html>
```

* `var paragraphs = document.getElementsByTagName('p');`
* `var paragraphs = document.getElementsByName('p');`
* `var paragraphs = document.getElementsByTagName('paragraph');`
