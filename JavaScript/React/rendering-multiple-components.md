# Rendering multiple components
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: component-lifecycle-methods

links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/lists-and-keys.html)'

---
## Content

**React** allows the creation of `DOM` element collections by harnessing the power of pure `JS`.

For example, you can dynamically generate a collection of `<p>` items by transforming an `array` with the `map()` function:
```jsx
const input = [0, 1, 2, 3];
const collection = input.map((no) => {
    return <p>{no}</p>;
  });
```

When rendering such lists inside a `component`, an additional **identity attribute** named `key` must be included for every element. `key`s should be unique to each **sibling element**.

Consider the following **functional component**:
```jsx
function MyList(props) {
  return (<div>
    {props.input.map(no =>
      <p key={no.toString()}>
        {no}
      </p>)}
  </div>);
}
```
When passing an array called `input` as a `prop`, this component will return a `<div>` with a `<p>` for every element in the array:
```jsx
ReactDOM.render(
  <MyList input={[7, 13, 42]} />,
  document.getElementById('root')
);

// output in the DOM is:
// <div>
//   <p>7</p>
//   <p>13</p>
//   <p>42</p>
// </div>
```

---
## Practice

Complete the following code snippet such that for every element in `input` prop, its value is displayed inside a `<h2>`:
```jsx
function Test(props) {
  return (<div>
    {???.???(i =>
      <??? ???={i.toString()}>
        {i}
      <???>)}
  </div>);
}
```

* `props.input`
* `map`
* `h2`
* `key`
* `/h2`
* `div`
* `/div`
* `input`
* `forEach`

---
## Revision

What is the name of the **identity attribute** that must be included when creating collections of `element`s with `map`?

???

* `key`
* `index`
* `i`
* `identity`
* `ref`
