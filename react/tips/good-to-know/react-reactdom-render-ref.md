---
author: catalin

levels:
  - basic
  - advanced
  - medium

type: normal

category: must-know

links:
  - '[Refs and the DOM](https://facebook.github.io/react/docs/refs-and-the-dom.html){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---
# `React.createRef`

---
## Content

Even though *reactive* data flow always ensures that the latest props are sent to each child outputted from `render()`, there are few cases where it's necessary or beneficial to *reach out* to component instances. This is done via `refs` (references).

To create a reference, you must call `React.createRef()` in the `constructor()` method, followed by attaching said reference to a React element using the `ref` attribute.

```jsx
class EnkiComponent extends React.Component{
  constructor(props) {
    super(props);
    this.myRef = React.createRef();
  }
  render() {
    return <div ref={this.myRef} />;
  }
}
```

Now, the node reference becomes accessible by calling the `.current` method:

```jsx
const nodeReference = this.myRef.current;
```

Depending on the type of node it is applied to, the `current` value of `ref` differs as such:

* on an HTML element, the `ref` receives the underlying DOM element
* on a class component, the `ref` receives the mounted instance of the component

Although function components can't have `ref` as their attribute (because they don't have instances), it is possible to use `ref` inside a function component if they are used on a class component or DOM element:

```jsx
function EnkiComponent(props) {
  // myRef has to be declared here
  // so it can be referenced
  let myRef = React.createRef();

  function handleClick() {
    myRef.current.focus();
  }

  return (
    <div>
      <input type="text" ref={myRef} />

      <input
        type="button"
        value="Focus the text input"
        onClick={handleClick}
      />
    </div>
  );
}
```

It's advisable that `ref`s shouldn't be used at the *top-level*. Instead `props` and `state` should handle communication with child components.

---
## Practice

Which of the following can't have `ref` as an attribute:

???

* function components
* class components
* HTML elements

---
## Revision

Complete the following code to create the `coolRef` reference:

```jsx
class Enki extends React.Component {
  constructor(props) {
    super(props);
    this.??? = React.???;
  }

  render() {
    return (
      <div>
        <h1>Nice title</h1>
        <div ???={???.coolRef} />
      </div>
    );
  }
}
```

* coolRef
* createRef()
* ref
* this
* coolReference
* createRef
* reference
* that