---
author: elliehoward
type: normal
category: must-know
links:
  - >-
    [MDN -
    createElement](https://developer.mozilla.org/en-US/docs/Web/API/Document/createElement){website}
  - >-
    [Stackoverflow - How do I create and style a div with
    JS?](https://stackoverflow.com/questions/6840326/how-can-i-create-and-style-a-div-using-javascript){website}
---

# Creating Elements


---

## Content

In order to create a new element on a webpage dynamically with JavaScript, we use the DOM's method `createElement`:  
`var newDiv = document.createElement('div')`

Then we can give the element some content. Let's make another tag dynamically and append it to the div tag.

```JavaScript
var newDiv = document
  .createElement('div')
var newTextContent = document
  .createTextNode('Hello World')
newDiv.appendChild(newTextContent)
```

Now we have to add the new div to the DOM in order to see it on the page:

```html
<html>
  <body>
    <div id="container">

    </div>
  </body>
  <script>
  var newDiv = document
    .createElement('div')
  var newTextContent = document
    .createTextNode('Hello World')
  newDiv
    .appendChild(newTextContent)

  // add the new div to
  // the HTML document using the DOM.
  document
    .getElementById('container')
    .appendChild(newDiv);
  </script>
</html>
```


---

## Practice

Given this code, fill in the blanks to create a new paragraph element:

```javascript
var p = document.???(???);
```

- `createElement`
- `"p"`
- `create`
- `p`
- `element`
- `getElementsByTagName`


---

## Revision

Which method on the Document Object is used for making a new element?

`document.???`  

- `createElement`
- `makeElement`
- `appendChild`
