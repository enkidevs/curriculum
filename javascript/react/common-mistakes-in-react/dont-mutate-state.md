---
author: kapnobatai136

levels:

  - basic
  
  - medium
  
aspects:

  - workout

  - deep

type: normal

category: tip

---

# Don't mutate state

---
## Content

Now that you know how to start using React, it is time to learn about some of the most common mistakes and how to avoid them.

One of the most common mistakes one can make when using React is trying to directly modify the `state`. In a previous workout we have discussed how the `state` is considered immutable, and some methods of updating arrays or objects were presented. Consider the following example:

```js
const updateFeaturesList = (e, idx) => {
  listFeatures[idx].checked =
    e.target.checked;
  setListFeatures(listFeatures);
};
```

Although this code might seem correct at a first glance, the UI won't actually reflect this change because the `state` is updated on the same object reference, which doesn't trigger a re-render. Because the `state` updates can happen asynchronously (React might do this outside of our control), mutating it might result in later `state` updates overriding the changes you have made directly. To circumvent this when using functional components, use the setter method returned by `useState()`:

```js
const updateFeaturesList = (e, idx) => {
  const { checked } = e.target;
  setListFeatures(features => {
    return features.map(
      (feature, index) => {
        if (idx === index) {
          feature = { ...feature, checked };
        }
        return feature;
      }
    );
  });
};
```

Note that by using the `.map()` array method (which creates a new array) and object spread (which creates a new object) we are ensuring that the original `state` items are not changed.

---
## Practice

Which of the following represents a good reason to mutate `state`?

???

* you should never mutate state
* to write less code
* to increase your app's performance
* to have easier access to nested values

---
## Revision

Which of the following represents a good reason to mutate `state`?

???

* you should never mutate state
* to write less code
* to increase your app's performance
* to have easier access to nested values
