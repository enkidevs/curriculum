---
author: kapnobatai136
  
aspects:

  - workout

  - deep

type: normal

category: tip

links:
  - '[use-deep-compare-effect](https://github.com/kentcdodds/use-deep-compare-effect){website}'

---

# Dependency array for useEffect

---
## Content

One important feature of the `useEffect()` hook is represented by its dependency array. When included, the `useEffect` hook only runs when one or more of its dependencies change, which can result in a performance increase by reducing the number of re-renders. Let's take a look at an example:

```js
function App() {
  const [name, setName] = useState("");
  useEffect(() => {
    document.title = `Welcome to ${name}!`;
  }, [name]);
}
```

Now, React will only re-runs the hook function if the current value of `name` is different from its previous value.

Let's take a look at another example:

```js
function App() {
  const features = ["feature1", "feature2"];

  useEffect(() => {
    // callback
  }, [features]);
}
```

It's important to understand that React uses a similar comparison mechanism[1] to `===` when determining if the value of a hook dependency changed.

In the case of objects and object-like structures such as arrays, `===` will compare the references of two objects, not the data they contain.

Even if we pass `[1, 2, 3]` to `useEffect` twice, the actual values within the array will not matter, React will only be interested if the array itself (i.e. the reference to it) is the same, not its content.

In the example above we are creating the `features` array within the component `App`. This means that anytime `App` renders, `features` will contain a new array instance with the same contents. When React checks if `features` array is the same as before, it never will be because we're recreating it on each render, which means that the `useEffect` hook will also run on each render.

Note that this is not an issue when using strings, primitive values or numbers as these are compared by value rather than reference.

There are multiple options of dealing with this issue. The first consists of moving the dependency array outside of the component, although in some cases this might not be possible.

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
