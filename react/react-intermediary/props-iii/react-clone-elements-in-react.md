---
author: catalin
type: normal
category: how-to
links:
  - >-
    [cloneElement()
    Documentation](https://facebook.github.io/react/docs/top-level-api.html#cloneelement){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Clone Elements in React


---

## Content

**React** provides different ways to clone elements. The `React.cloneElement` method can clone an element whilst keeping the `key` and `ref` of the original one.

This is the syntax:

```jsx
React.cloneElement(
  element,
  [props],
  [...children]
);
```

A new element[1] will be returned using the provided element as the starting point. The old `prop`s will be merged in shallowly[2] with the new specified ones. 

Furthermore, new `children` will replace old ones.

Keep in mind that using the following will override the `ref`:

```jsx
React.cloneElement(
  child,
  { ref: "newRef" },
  null
);
```

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
        Hello {this.props.name}, and welcome to
        {this.props.newProp}!
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

Complete the code snippet below to clone an element and override the `ref` with the given value:

```javascript
React.???(
  child, 
  { ???: 'newRef' },
  null
);
```

- `cloneElement`
- `ref`
- `newElement`
- `spawnElement`
- `key`
- `obj`
- `env`


---

## Revision

Complete the code snippet below to clone the given `element`:

```javascript
const element = <h1>Hey!</h1>;

???.???(
  element, 
  null,
  null
);
```

- `React`
- `cloneElement`
- `ref`
- `newElement`
- `spawnElement`
- `key`
- `obj`
- `env`
- `element`


---

## Footnotes

[1: Element]
The React element represents the building block of any React application. 

Although one might confuse elements with components, they are not the same. 

An element is used to describe what you want to see on the screen. Here's an example:

```jsx
const element = <h1>Enki is cool!</h1>;
```

[2: Shallow Merge]
A merge of two objects in JavaScript produces a new object by combining their properties. 

Properties that only exists in one of the two objects are just copied into the result. 

If a property exists in both, the value of that property from the second object will overwrite the value of the first. 

A "shallow" merge means that we only compare/merge top-level properties. Merging all levels of properties between two objects is called a *deep merge*.
