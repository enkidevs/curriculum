---
author: elliehoward
type: normal
category: must-know
links:
  - >-
    [MDN -
    appendChild](https://developer.mozilla.org/en-US/docs/Web/API/Node/appendChild){documentation}
  - >-
    [Youtube - DOM Nodes - Beau teaches
    JavaScript](https://www.youtube.com/watch?v=BWVoPxob5DU){video}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Appending Nodes to Document


---

## Content

Once you have created an element you need to add it to the HTML document, or it won't show up anywhere. The `appendChild` method adds an element to a parent element. You must select the desired parent element with one of the various methods available.

In this example we will use the `getElementById` to select the parent, then our `initializeElement` function to create a heading and then use `appendChild` to add it to the document:

```javascript
let container = document.getElementById(
  "container"
);

function initializeElement(element, text) {
  let newElement = document.createElement(
    element
  );
  newElement.appendChild(
    document.createTextNode(text)
  );
  return newElement;
}

let heading = initializeElement(
  "h1",
  "hello world"
);

container.appendChild(heading);
```


---

## Practice

After creating an element, which method is used to add the element to the HTML document?

???

- `appendChild`
- `createElement`
- `appendElement`
- `createTextNode`
- `appendNode`


---

## Revision

Fill in the blanks to add the new element to the HTML document.

```javascript
let container = document.getElementById(
  "container"
);
let paragraph = document.createElement("p");

container.???(paragraph);
```

- `appendChild`
- `appendNode`
- `appendElement`
