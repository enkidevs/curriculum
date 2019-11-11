---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/top-level-api.html#cloneelement){website}'
  - '[facebook.github.io](https://facebook.github.io/react/blog/2015/03/03/react-v0.13-rc2.html){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Clone Elements in **React**

---
## Content

**React** provides different ways to clone elements. The `React.cloneElement` method, unlike `React.addons.cloneWithProps` (which is now deprecated) can clone an element whilst keeping the `key` and `ref` of the original one.

How to use:
```javascript
React.cloneElement(
  element,
  [props],
  [...children]
);
```

A new `ReactElement` will be returned using the provided `element` as the starting point. The old `props` will be merged in shallowly with the new specified ones. Furthermore, new `children` will replace old ones.

Keep in mind that using:
```jsx
React.cloneElement(child, { ref: 'newRef' })
```
will override the `ref`.

---
## Practice

Complete the code snippet below to clone an element and override the ref:

```javascript
React.???(child, { ???: 'newRef' })
```


* `cloneElement`
* `ref`
* `newElement`
* `spawnElement`
* `key`
* `obj`
* `env`

---
## Revision

Using the `React.cloneElement` method what props will be preserved unlike with the  `cloneWithProps` method. ???


* `key` and `ref`
* `key` and `props`
* `child` and `ref`
* `child` and `props`


