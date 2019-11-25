---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[cloneElement() documentation](https://facebook.github.io/react/docs/top-level-api.html#cloneelement){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Clone Elements in React

---
## Content

**React** provides different ways to clone elements. The `React.cloneElement` method can clone an element whilst keeping the `key` and `ref` of the original one.

How to use:
```jsx
React.cloneElement(
  element,
  [props],
  [...children]
);
```

A new element[1] will be returned using the provided element as the starting point. The old `prop`s will be merged in shallowly[2] with the new specified ones. Furthermore, new `children` will replace old ones.

Keep in mind that using:
```jsx
React.cloneElement(
  child,
  { ref: "newRef" },
  null
);
```
will override the `ref`.

A good example consists of adding `prop`s to the elements that are passed as children to one of your components.

```jsx
class Enki extends React.Component {
  render() {
    const newProp = "Enki";
    return (
      <div>
        {React.Children.map(
          this.props.children,
          child => {
            return React.cloneElement(
              child,
              { newProp },
              null
            );
          }
        )}
      </div>
    );
  }
}

class EnkiChild extends React.Component {
  render() {
    return (
      <h1>
        Hello {name}, and welcome to
        {newProp}!
      </h1>
    );
  }
}

ReactDOM.render(
  <Enki>
    <EnkiChild name="Andrei" />
    <EnkiChild name="Stefan" />
  </Enki>,
  document.getElementById("root")
);

// Hello Andrei, and welcome to Enki!
// Hello Stefan, and welcome to Enki!
```

---
## Practice

Complete the code snippet below to clone an element and override the ref:

```javascript
React.???(
  child, 
  { ???: 'newRef' },
  null
);
```

* `cloneElement`
* `ref`
* `newElement`
* `spawnElement`
* `key`
* `obj`
* `env`

---
## Revision

Complete the code snippet below to clone an element and override the ref:

```javascript
React.???(
  child, 
  { ???: 'newRef' },
  null
);
```

* `cloneElement`
* `ref`
* `newElement`
* `spawnElement`
* `key`
* `obj`
* `env`

---
## Footnotes

[1: element]
The React element represents the building block of any React application. Although one might confuse elements with components, they are not the same. An element is used to describe what you want to see on the screen. Here's an example:
```jsx
const element = <h1>Enki is cool!</h1>;
```

[2: shallow merge]
A merge of two objects in JavaScript produces a new object by combining their properties. Properties that only exists in one of the two objects are just copied into the result. If a property exists in both, the value of that property from the second object will overwrite the value of the first. A"shallow" merge means that we only compare/merge top-level properties. Merging all levels of properties between two objects is called a *deep merge*.