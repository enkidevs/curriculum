---
author: elliehoward
type: normal
category: must-know
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

# Write a Function to Return an Element


---

## Content

Let's say we need to create elements quite often within our code. In that case, we should write a function that creates and returns an element:

```javascript
function initializeElement() {
  let heading = document.createElement(
    'h1'
  );
  return heading;
}
```

We can make our functions more useful by adding some parameters that can change the text inside, or even the type of the element itself:

```javascript
function initializeElement(element, text) {
  let newElement = document.createElement(
    element
  );
  newElement.appendChild(
    document.createTextNode(text)
  );
  return newElement;
}
initializeElement('h1', 'hello world');
```

In the example above, we create an `h1` element that says `'hello world'`.


---

## Practice

Fill in the blanks to create a function that returns an element.

```javascript
function initializeElement() {
  let paragraph = document.???('p')
  return ???
}
```

- `createElement`
- `paragraph`
- `makeElement`
- `document`
- `function`
- `element`


---

## Revision

Which of the following will return an element?
???

Option A:

```javascript
function initializeElement() {
  let paragraph = document
    .create('p')
  return paragraph;
}
```

Option B:

```javascript
function initializeElement() {
  var paragraph = document
    .createElement('p')
  return element;
}
```

Option C:

```javascript
function initializeElement() {
  let paragraph = document
    .createElement('p')
  return paragraph;
}
```

- C
- B
- A
