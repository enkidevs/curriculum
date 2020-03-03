---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Conditional Rendering](https://reactjs.org/docs/conditional-rendering.html){documentation}'
  - '[Source](https://github.com/30-seconds/30-seconds-of-interviews#what-are-inline-conditional-expressions){website}'

---

# What are in-line conditional expressions?

---
## Content

In React, a JSX element tree is just one large expression. Due to this reason, you can't use statements such as `for` loops or `if` conditional inside:

```jsx
function MyComponent({ props }) {
  return (
    <div className="wrapper">
      if (props.name === 'Enki') {
        <p>{props.name} is cool!</p>
      } else {
        <p>Can't recognise the name</p>
      }
    </div>
  )
}
```

In this example, trying to render `<MyComponent/>` will result in React throwing an error. If you want to use `if` statement, React supports in-line conditionals like this:

```jsx
function MyComponent({ props }) {
  return (
    <div className="wrapper">
      {props.name === 'Enki' ? (
        <p>{props.name} is cool!</p>
      ) : (
        <p>Can't recognise the name</p>
      )}
    </div>
  );
}
```

As a reminder, an in-line conditional looked like this: `condition ? trueCase : falseCase`.


---
## Practice

Which of the following is the correct way of including conditionals inside JSX?

```jsx
function A ({ props }) {
  return (
    <div>
      if (props.age > 21) {
        <p>Can drink</p>
      } else {
        <p>Can't drink</p>
      }
    </div>
  );
}

function B ({ props }) {
  return (
    <div>
      {props.age > 21 ? (
        <p>Can drink</p>
      ) : (
        <p>Can't drink</p>
      )}
    </div>
  );
}
```

???

* B
* A

---
## Revision

Which of the following is the correct in-line conditional?

???

* condition ? trueCase : falseCase
* condition : trueCase ? falseCase
* condition ? falseCase : trueCase