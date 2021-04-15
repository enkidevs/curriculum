---
author: kapnobatai136
type: normal
category: tip
links:
  - >-
    [Use deep compare
    effect](https://github.com/kentcdodds/use-deep-compare-effect){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Dependency array for useEffect (Part 2)


---

## Content

Using the `useEffect()` hook with a dependency array might lead to some unexpected bugs. This is due to how the comparison is made. Instead of the value being compared, React compares the references[1]. In this insight, we'll take a look at how to avoid any issues. 

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

The second option is wrapping our value in a `useMemo()` hook which caches[2] our reference during re-renders:

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

- To reduce the number of re-renders.
- To increase the number of re-renders.
- To save the state value at a certain point in time.
- To have access to multiple versions of the state.


---

## Footnotes

[1:Comparing Values]
Sometimes it is really difficult to find out if two values are actually the same value. When thinking of JavaScript, two objects are considered to have the same value if they have the same reference. This can be done through the `Object.is()` function, which is not the same as using the `==` operator (this applies coercion to both sides), or using the `===` operator (this treats `-0` and `+0` as being the same, also treats `Number.NaN` is not equal to `NaN`). Let's take a look at some examples:

```js
Object.is('foo', 'foo'); // true
Object.is('foo', 'bar'); // false
Object.is([], []); // false
var foo = { a: 1 };
var bar = { a: 1 };
Object.is(foo, foo); // true
Object.is(foo, bar); // false
```

[2:Caching]
In computer science, memoization refers to a technique used to store the results of an expensive function call and returning the cached result when the same inputs are used. In React, this can be achieved through the `useMemo()` function. To have a better understanding, let's take a look at an example:

```js
const cachedValue = useMemo(
  () => expensiveFunction(a, b),
  [a, b]
);
```

You pass a function (`expensiveFunction(a, b)`) and a dependency array (`[a, b]`) in an async manner (`() => ...`). The result is cached, and the function is only re-computed if one of the dependencies changed.

Note that `expensivefunction(a, b)` is ran during rendering.
