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

---


## Exercise

# Write a Function to Return an Element

Let's say we need to create elements quite often within our code, then we should write a function that creates and returns an element:

```javascript
function initializeElement() {
  var heading = document.createElement('h1')
  return heading
}
```
We can make our functions more useful by adding some parameters that can change the text inside, and even the type of element itself:

```javascript
function initializeElement(element, text) {
  var newElement = document.createElement(element)
  newElement.appendChild(document.createTextNode(text))
  return newElement
}
createElement('h1', 'hello world')
```
In the example above we create an h1 element that says hello world.

---
## Practice

Fill in the blanks to create a function that returns an element.

```javascript
function initializeElement() {
  var paragraph = document.???('p')
  return ???
}
```

* createElement
* paragraph
* makeElement
* document
* function
* element

---
## Revision

Which of the following will return an element?
Option A:
```javascript
function initializeElement() {
  var paragraph = document.create('p')
  return paragraph;
}
```
Option B:
```javascript
function initializeElement() {
  var paragraph = document.createElement('p')
  return element;
}
```
Option C:
```javascript
function initializeElement() {
  var paragraph = document.createElement('p')
  return paragraph;
}
```

* C
* B
* A
