---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Lists & Keys](https://reactjs.org/docs/lists-and-keys.html){documentation}'
  - '[Source](https://github.com/30-seconds/30-seconds-of-interviews#what-is-a-key-what-are-the-benefits-of-using-it-in-lists){website}'

---

# Using keys in list items

---
## Content

When working with lists, it is always a good idea to give an unique key to each list element:

```jsx
const keyedItems = items.map(item => (
  <li key={item.uniqueKey}>{item.data}</li>
));
```

Note that in this example we assume that the each item already has its own unique key.

Assigning keys to list items gives them a stable identity when redered, which help React whenever there is a change in the list. 

It is strongly advised to use **unique keys** that are not indexes (e.g. 1, 2, 3, and so on). Using a simple index could lead to problems if the order of the items changes, or it might negatively affect performance. Some other issues might come up when using indexes, such as problems with the component state.

If you are using components for each list items, you should use the `key` tag on the component, rather than on the `<li>` element.

---
## Practice

When deciding on what key you should use for your list items, it is recommended to use ???.

* unique keys
* indexes
* their name

---
## Revision

If you have a component that represents your list item, where should you set the `key` tag?

???

* On the component.
* On the <li> element.
* Doesn't matter.