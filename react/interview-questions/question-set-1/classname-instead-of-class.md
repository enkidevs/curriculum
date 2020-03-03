---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Source](https://github.com/30-seconds/30-seconds-of-interviews#why-does-react-use-classname-instead-of-class-like-in-html){website}'

---

# Why does React use `className`?

---
## Content

In HTML, you could style elements through the `class` tag. The same functionality can be achieved in React, but here the tag is named `className`. Why do you think that is the case?

One of the first reasons is that React tried to align itself with the DOM API rather than with HTML. This is due to how elements are created in React (behind the scenes). To set a class on a newly created element, you would have had to call the `className` API:

```js
const aElement = document.createElement("div");
aElement.className = "someClass";
```

Another reason is that before ES5 (ECMAScript 5), reserved words couldn't be used inside object. Because React elements are nothing more than objects, this meant that `class` was unusable:

```js
const aElement = {
  attributes: {
    class: "someClass" // would throw and error before ES5
  }
}
```

Other reasons include:
* old browser incompatibility
* trying to assign a variable when destructuring will throw an error in modern environments

```js
// Throws an error:
const { class } = this.props;

// Doesn't throw an error:
const { className } = this.props;

// Still doen't throw an error but is verbose:
const { class: className } = this.props;
```

---
## Practice

In React, you use `className` because it is aligned with ??? rather than ???.

* the DOM API 
* HTML

---
## Revision

Which of the following won't throw an error?

```js
// A
const { class } = this.props;

// B
const { className } = this.props;

// C
const { className: class } = this.props;
```

???

* B
* A
* C