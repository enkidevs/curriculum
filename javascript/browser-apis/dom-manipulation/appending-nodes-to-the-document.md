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

- '[MDN - appendChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/appendChild)'
- '[Youtube - DOM Nodes - Beau teaches JavaScript](https://www.youtube.com/watch?v=BWVoPxob5DU)'
---


## Exercise

# Appending Nodes to the Document

## appendChild()

Once you have created an element you need to add it to the HTML document. The appendChild method adds an element to a parent element. You must select the desired parent element with one of the various methods available.

In this example we will use the getElementById to select the parent, then our initializeElement function to create a heading and then use appendChild to add it to the document:

```javascript
var container = document.getElementsById('container');

function initializeElement(element, text) {
  var newElement = document.createElement(element)
  newElement.appendChild(document.createTextNode(text))
  return newElement
}

var heading = initializeElement('h1', 'hello world')

container.appendChild(heading)
```

---
## Practice

After creating an element, which method is used to add the element to the HTML document?

* appendChild
* createElement
* appendElement
* createTextNode
* appendNode

---
## Revision

Fill in the blanks to add the new element to the HTML document.

```javascript
var container = document.getElementsById('container');
var paragraph = document.createElement('p');

container.???(paragraph)
```

* appendChild
* appendNode
* appendElement
