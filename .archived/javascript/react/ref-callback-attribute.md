# `ref` callback attribute
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/more-about-refs.html#the-ref-callback-attribute){website}

---
## Content

Every *React* component can be attached with a special attribute called `ref`. 

This `ref` attribute can be a *callback function* which will be invoked as soon as the component is mounted.

The *referenced* component will be passed as a parameter so it can be used/saved by the *callback function*.

This can be done by adding `ref` attribute to anything returned from `render()` :
```jsx
render: function() {
  return (
    <Enki 
      ref={function(enki) {
        enki.doSomething();
      }} />
  );
},
```
or using **ES6** arrow function:
```jsx
render: function() {
  return <Enki ref= {(c) =>this._enki=c} />;
},
componentDidMount: function() {
  this._enki.doSomething();
},
```

Keep in mind that when attaching a `ref` to a DOM  component like `<div />`, you will get the DOM node back, while when attaching it to a composite element like `<TextInput />`, you will get the React **class instance**.

---
## Revision

What will you get if you attach a `ref` to a `<span />`?

???

* a **DOM** node
* a **React** class instance