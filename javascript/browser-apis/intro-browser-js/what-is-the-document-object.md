---
author: elliehoward
type: normal
category: must-know
links:
  - >-
    [MDN - DOM
    Introduction](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction){documentation}
  - >-
    [W3 Schools - The HTML DOM Element
    Object](https://www.w3schools.com/jsref/dom_obj_all.asp){article}
  - >-
    [Free Code Camp - What is the Document Object
    Model?](https://www.youtube.com/watch?v=80Mr2Z6Qikc){article}
  - >-
    [Stack Overflow - Need help to understand what Document Object Model is?
    ](https://stackoverflow.com/questions/6965802/need-help-to-understand-what-document-object-model-is){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What is the Document Object?


---

## Content

The Document Object Model, also called the DOM, is a representation of an HTML or XML document. Nesting elements are arranged into a Tree, similar to the file structure in your computer. It is an API for using a programming language to add, read, edit, and delete HTML elements and attributes. Through this interface, scripts can also change the CSS styles, react to events, and create new elements on the page.

## JavaScript and the DOM

The HTML DOM can be accessed by JavaScript through an object called `document`.

In the DOM, all HTML elements are objects. Each object has properties and methods for interacting with the element. For example, you can use the getElementById method with the `innerHTML` property to change the content of a paragraph tag with `id="message"`.

```html
<html>
<body>

<p id="message">Hello World!</p>

<script>
document
  .getElementById("message")
  .innerHTML = "Changed!";
</script>

</body>
</html>
```


---

## Practice

Select the element with the id `"message"` and change its content using the DOM:

```html
<html>
<body>

<p id="message">Hello World!</p>

<script>
document
  .???("message")
  .??? = "Changed!";
</script>

</body>
</html>
```

- `getElementById`
- `innerHTML`
- `message`
- `DOM`
- `HTML`
- `<p>`
- `id`


---

## Revision

Select the element with the id `"time"` and change its content to `"Future"`.

```html
<html>
<body>

<p id="time">
  Present
</p>

<script>
???
</script>

</body>
</html>
```

- `document.getElementById('time').innerHTML = "Future"`
- `document.getElement('time').HTML = "Future"`
- `DOM.getElementById('time').content = "Future"`
