---
author: kapnobatai136
  
aspects:

  - workout

  - deep

type: normal

category: tip

links:
  - '[Use deep compare effect](https://github.com/kentcdodds/use-deep-compare-effect){website}'

---

# Dependency array for useEffect (Part 2)

---
## Content

The first consists of moving the dependency array outside of the component, although in some cases this might not be possible.

```js
// now we aren't re-creating the array
// on each render
const features = ["feature1", "feature2"];

function App() {
  useEffect(() => {
    // callback
  }, [features]);
}
```

The second option is wrapping our value in a `useMemo()` hook which caches[1] our reference during re-renders:

```js
function App() {
  const features = useMemo(
    () => ["features1", "features2"],
    []
  );

  useEffect(() => {
    // callback
  }, [features]);
}
```

The third and last option consists of using a deep compare hook that tracks the dependency references and their contents. We will not cover this option in this insight, but make sure to check out the resources for a link to a popular custom hook that handles this use-case.

---
## Practice

Why would you use a dependency array in your `useEffect()` hook call?

???

* To reduce the number of re-renders.
* To increase the number of re-renders.
* To save the `state` value at a certain point in time.
* To have access to multiple versions of the `state`.

---
## Footnotes

[1: Caching]
In computer science, memoization refers to a technique used to store the results of an expensive function call and returning the cached result when the same inputs are used. In React, this can be achieved through the `useMemo()` function. To have a better understanding, let's take a look at an example:

```js
const cachedValue = useMemo(
  () => expensiveFunction(a, b),
  [a, b]
);
```

You pass a function (`expensiveFunction(a, b)`) and a dependency array (`[a, b]`) in an async manner (`() => ...`). The result is cached, and the function is only re-computed if one of the dependencies changed.

Note that `expensivefunction(a, b)` is ran during rendering.