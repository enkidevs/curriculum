---
author: DanielAmorimAraujo

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/fragments.html){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Fragments in **React**

---
## Content

A common pattern in **React** is for a component to return multiple elements. 

Fragments let you group a list of children without adding extra nodes to the **DOM**.

```javascript
render() {
  return (
    <React.Fragment>
      <ChildA />
      <ChildB />
      <ChildC />
    </React.Fragment>
  );
}
```

Now, each child will be rendered without the need of a **div** or another component to wrap them.

You can also use `empty tags` as a shorter syntax. This is equivalent to the above:

```javascript
render() {
  return (
    <>
      <ChildA />
      <ChildB />
      <ChildC />
    </>
  );
}
```

Fragments declared with explicit `React.Fragment` syntax may have keys. This is useful for mapping a collection to an array of fragments.

```javascript
function Enki(props) {
  return (
    <dl>
      {props.items.map(item => (
        // Without the `key`,
        // React will fire a key warning
        <React.Fragment key={item.id}>
          <dt>{item.subject}</dt>
          <dd>{item.description}</dd>
        </React.Fragment>
      ))}
    </dl>
  );
}
```

Note that `key` is the only attribute that can be passed to `Fragment`.

---
## Practice

Complete the snippet below which maps a collection to an array of fragments:

```javascript
function Enki(props) {
  return (
    <dl>
      {props.items.???(item => (
        <React.Fragment ???={item.id}>
          <dt>{item.subject}</dt>
          <dd>{item.description}</dd>
        </React.???>
      ))}
    </dl>
  );
}
```


* `map`
* `key`
* `Fragment`
* `React.Fragment`
* `id`
* `keys`

---
## Revision

What is a shorter syntax for the `React.Fragment` tag? 

???


* `<>`
* `<Frag>`
* `<F>`
* `<R.F>`

