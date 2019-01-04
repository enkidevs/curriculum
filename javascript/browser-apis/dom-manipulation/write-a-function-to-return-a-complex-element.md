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
  javascript.dom.0: 10
  javascript.dom.1: 10

links:

- '[MDN - Traversing an HTML table with JavaScript and DOM Interfaces](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Traversing_an_HTML_table_with_JavaScript_and_DOM_Interfaces)'
---
# Write a Function to Return a Complex Element
---
## Content


Let's say we have an array of data and we want to display that data in a list on a webpage.
Instead of writing out all the HTML elements for each piece of data, we can just use a function to loop through the array and return a list based on the data passed in:

```javascript
var teas = [
  'chamomile',
  'green',
  'breakfast',
  'earl grey'
];
var container = document
  .getElementById('container');

function createListElement(data){
  var ul = document
    .createElement('ul');
  for (
    var i = 0;
    i < data.length;
    i++
  ) {
    var li = document
      .createElement('li');
    var text = document
      .createTextNode(data[i]);
    li.appendChild(text);
    ul.appendChild(li);

  }  
  return ul;
}

var teaList = createListElement(
  teas
);
container.appendChild(
  teaList
);

```

In the example above we selected a parent element and stored it in a variable called container. Then we created a ul element, looped through our array of teas and created a li element for each type of tea while appending each of them to the ul. Once we created the list we appended it to the parent element.

---
## Practice

Fill in the blanks to complete a function that takes an array and returns a list element with list items for each element in the given array.

```javascript
function createListElement(data){
  var ul = document
    .???('ul');
  for (
    var i = 0;
    i < data.length;
    i++
  ) {
    var li = document
      .createElement('li');
    var text = document
      .???(data[???]);
    li
      .appendChild(text);
    ul
      .appendChild(li);

  }  
  return ul;
}
```

* createElement
* createTextNode
* i
* makeElement
* data
* li

---
## Revision

Which function, given an array, will return a list element with a list item element for each element in the array?
???

Option A:
```javascript
function createLI(data){
  var ul = document
    .createElement('ul');
  for (
    var i = 0;
    i < data.length;
    i++
  ) {
    var li = document
      .createElement('li');
    var text = document
      .createTextNode(data[i]);
    li
      .appendChild(text);
    ul
      .appendChild(li);

  }  
  return ul;
}
```
Option B:
```javascript
function createLI(data){
  var ul = document
    .makeElement('ul');
  for (
    var i = 0;
    i < data.length;
    i++
  ) {
    var li = document
      .makeElement('li');
    var text = document
      .createTextNode(data[i]);
    li
      .appendChild(text);
    ul
      .appendChild(li);

  }  
  return ul;
}
```
Option C:
```javascript
function createLI(data){
  var ul = document
    .createElement('ul');
  for (
    var i = 0;
    i < data.length;
    i++
  ) {
    var li = document
      .createElement('li');
    var text = document
      .createTextNode(data[i]);
    li
      .appendElement(text);
    ul
      .appendElement(li);

  }  
  return ul;
}
```

* A
* C
* B
 
