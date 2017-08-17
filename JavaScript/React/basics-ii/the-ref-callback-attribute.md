# The `ref` callback attribute
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: conditional-rendering-part-2

links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/refs-and-the-dom.html)'

---
## Content

The `ref` is a special *attribute* in **React** that is attachable to any `component` or **DOM** `element`.

**Refs** should be *callback functions* that will be automatically called when the targeted component is mounted or unmounted.

They are usually used to access components from outside the normal data flow in **React**. Normally, children components can only be modified through their `props`.

However, using a `ref` you can access components and invoke elements' methods directly.

When attributed to an **HTML** `element`, the `ref` callback will take the underlying **DOM** element as input:
```jsx
render() {
  return (
    <div>
      <input ref={(in) => {
         this.myInput = in)}} />
    </div>
    );
}
```

In the `ref` callback function above, `in` (input) will be:

- the underlying **DOM** element or **React** component *instance* when `<input />` is **mounted**

- `null` when `<input />` is **unmounted**

The referenced element is now accessible via `this.myInput`:
```jsx
someMethod() {
  // call raw DOM API method focus()
  this.myInput.focus();
}
```

Note that `ref` attribute **can't** be used on functional components because they don't have instances. However, it can be used inside a component's `render()` method.

Using `ref`s implies an *imperative* approach to a problem, while **React** was designed to be *declarative*. Therefore, to enforce **React**'s data flow it's recommended not to overuse `ref`s.

However, there might be scenarios when they are necessary.

---
## Practice

Complete the following `render()` function such that, after *mounting*, the `<input />` element can be accessed via `this.myInput`:
```jsx
render() {
  return (
    <div>
      <input ???={(in) => {
         this.??? = ???)}} />
    </div>
    );
}
```

* `ref`
* `myInput`
* `in`
* `refs`
* `input`
* `<input />`
* `null`
* `ref.myInput`
* `ref.in`

---
## Revision

How would you access the referenced `<input />` element from within `someMethod()` in the example below?
```jsx
render() {
  return (
    <div>
      <input ref={(in) => {
         this.i = in)}} />
    </div>
    );
}

someMethod() {
  ???.focus();
}

```

* `this.i`
* `this.refs.i`
* `i`
* `this.in`
* `this.refs.in`
* `in`
