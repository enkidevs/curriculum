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

- '[MDN - DOM Introduction](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction)'
- '[W3 Schools - The HTML DOM Element Object](https://www.w3schools.com/jsref/dom_obj_all.asp)'
- '[Free Code Camp - What's the Document Object Model?](https://www.youtube.com/watch?v=80Mr2Z6Qikc)'
- '[Stack Overflow - Need help to understand what Document Object Model is? ](https://stackoverflow.com/questions/6965802/need-help-to-understand-what-document-object-model-is)'
---


## Exercise

# What is the Document Object?

The Document Object Model, also called the DOM, is an object oriented representation of an HTML or XML document. It is an API for using a programming language to add, read, edit, and delete HTML elements and attributes. Through this interface, scripts can also change the CSS styles, react to events, and create new events on the page.

## JavaScript and the DOM

The HTML DOM can be accessed by many different programming languages but JavaScript is most popular because it's the language most commonly used for interacting with content on the web.

In the DOM, all HTML elements are defined as objects. Each object has properties and methods for interacting with the element. For example you can use the getElementById method with the innerHTML property to change the content of a paragraph tag with id="message".

```html
<html>
<body>

<p id="message">Hello World!</p>

<script>
document.getElementById("message").innerHTML = "My content was changed!";
</script>

</body>
</html>
```



---
## Practice

Select the element with the id "message" and change it's content using the DOM:
```html
<html>
<body>

<p id="message">Hello World!</p>

<script>
document.???("message").??? = "My content was changed!";
</script>

</body>
</html>
```


* getElementById
* innerHTML
* message
* DOM
* HTML
* <p>
* id

---
## Revision

Select the element with the id "time" and change it's content to "Future"

```html
<html>
<body>

<p id="time">Present</p>

<script>
???
</script>

</body>
</html>
```

* document.getElementById('time').innerHTML = "Future"
* document.getElement('time').HTML = "Future"
* DOM.getElementById('time').content = "Future"
