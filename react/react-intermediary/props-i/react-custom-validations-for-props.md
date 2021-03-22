---
author: catalin
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Custom Validator Functions for props


---

## Content

**React** allows you to define and use custom *validator functions* for your props. These can be used inside `propTypes`.

The standard arguments[1] for a validator function are

```jsx
function(props, propName, componentName) {
  //check here
}
```

Suppose we want to check if the `text` prop is a `string` and has fewer than 200 characters.

First things first, we need a function to check this:

```jsx
function lengthCheck(
  props,
  propName,
  componentName
) {
  if (props[propName]) {
    let text = props[propName];
    if (typeof text === "string") {
      return text.length < 200
        ? null
        : new Error(propName + " too long");
    }
  }
  // assume everything is ok
  return null;
}
```

Now the function can be used inside `propTypes`:

```jsx
MyComponent.propTypes = {
  text: lengthCheck,
};
```

Note that an `Error` should be returned instead of being `throw`n or using `console.warn` in order to make the validator function work inside `oneOfType`.


---

## Practice

What are the basic arguments of a validator function?

```jsx
function (???, ???, ???) {
 // check here
}
```

- `props`
- `propName`
- `componentName`
- `validator`
- `value`
- `text`
- `name`


---

## Revision

What are the basic arguments of a validator function?

```jsx
function (???, ???, ???) {
 // check here
}
```

- `props`
- `propName`
- `componentName`
- `validator`
- `value`
- `text`
- `name`


---

## Footnotes

[1:Arguments]
`location` can also be used as the last argument.
