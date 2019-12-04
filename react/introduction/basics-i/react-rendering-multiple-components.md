---
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[Lists and keys](https://facebook.github.io/react/docs/lists-and-keys.html){website}'

parent: component-lifecycle-methods

aspects:
  - introduction

---

# Rendering multiple components

---
## Content

**React** allows the creation of `DOM` element collections by harnessing the power of pure JS.

For example, you can dynamically generate a collection of `<p>` items by transforming an array with the `map()` function:
```jsx
const input = [0, 1, 2, 3];
const collection = input.map(no => {
  return <p>{no}</p>;
});
```

When rendering such lists inside a component, an additional **identity attribute** named `key` must be included for every element. `key`s should be unique among all sibling elements[1].

Consider the following **function component**:
```jsx
function MyList(props) {
  return (
    <div>
      {props.input.map(no => (
        <p key={no.toString()}>{no}</p>
      ))}
    </div>
  );
}
```
When passing an array called `input` as a `prop`, this component will return a `<div>` with a `<p>` for every element in the array:

```jsx
ReactDOM.render(
  <MyList input={[7, 13, 42]} />,
  document.getElementById("root")
);
```

The output in the DOM is:
```html
<div>
  <p>7</p>
  <p>13</p>
  <p>42</p>
</div>
```

---
## Practice

What is the name of the **identity attribute** that must be included when creating collections of `element`s with `map`?

???


* `key`
* `index`
* `i`
* `identity`
* `ref`

---
## Revision

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
## Footnotes
[1:keys]
To get a better understanding of this, let's take a look at how React decides where it should re-render a component. In its rawest form, a React component is just an object with a set of properties. Each time a change occurs in these properties, React will compare the new and old versions and, if a difference is detected, it will redraw the component. It's important to note that any property of a React element can change, we could make an `input` into a `button`, add/remove an `id` from a `form`, etc. This is why, when dealing with multiple elements at the same level, a unique `key` is needed so that React knows how to keep track of the order of elements no matter how the elements themselves change. 

If a unique `key` is not defined, between re-renders React won't know which element it is dealing with. This might lead to undesired re-renders or performance drops. To learn more about this check out this great article on [the significance of React keys](https://dev.to/jtonzing/the-significance-of-react-keys---a-visual-explanation--56l7).
