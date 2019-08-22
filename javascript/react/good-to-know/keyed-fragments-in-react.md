---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/create-fragment.html){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Keyed fragments in **React**

---
## Content

Take a look at the following code:

```jsx
class Columns extends React.Component {
  render() {
    return (
      <div>
        <td>Is this real life</td>
        <td>Or is it fantasy</td>
      </div>
    );
  }
}

class Table extends React.Component {
  render() {
    return (
      <table>
        <tr>
          <Columns />
        </tr>
      </table>
    );
  }
}
```

Although it might seem correct at a first glance, this would result in an invalid HTML code because the `<td>`s in the `Columns` component are encapsulated in a `<div>`. The solution to this problem is represented by `Fragment`s, which allows you to add a parent tag to your JSV elements without adding an extra note to the DOM.

Here is how you would use `Fragment`s on the `Columns` component:

```jsx
class Columns extends React.Component {
  render() {
    return (
      <React.Fragment>
        <td>Is this real life</td>
        <td>Or is it fantasy</td>
      </React.Fragment>
    );
  }
}
```

Or, if you despise writing too many words when you code:

```jsx
// ...
      <>
        <td>Is this real life</td>
        <td>Or is it fantasy</td>
      </>
// ...
```

You can also attribute `key`s to your `Fragment`s, but only if they are declared using the explicit `<React.Fragment>` syntax. There are many use cases for this, with one example being mapping a collection to an array of fragments:

```jsx
class ProductList extends React.Component {
  // ...
  render() {
    return (
      <dl>
        {props.products.map(product => (
          <React.Fragment key={product.id}>
            <dt>{product.name}</dt>
            <dd>{product.description}</dd>
          </React.Fragment>
        ))}
      </dl>
    );
  }
}
```

---
## Practice

Complete the following code:

```jsx
class Columns extends React.Component {
  render() {
    return (
      ???
        <td>Is this real life</td>
        <td>Or is it fantasy</td>
      ???
    );
  }
}
```

* <React.Fragment>
* </React.Fragment>
* <Fragment>
* </Fragment>

---
## Revision

Complete the following description list component:

```jsx
function Glossary(props) {
  return (
    <dl>
      {props.items.map(item => (
        // Without the `key`, React will fire a key warning
        <React.Fragment key={item.id}>
          <dt>{item.term}</dt>
          <dd>{item.description}</dd>
        </React.Fragment>
      ))}
    </dl>
  );
}
```

* React.Fragment
* key
* /React.Fragment
* Fragment
* /Fragment