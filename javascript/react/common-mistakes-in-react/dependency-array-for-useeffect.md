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

One important feature of the `useEffect()` hook is represented by its dependency array. When included, the dependency array can result in a performance increase due to reducing the number of re-renders. Let's take a look at an example:

```js
function App() {
  const [name, setName] = useState("");
  useEffect(() => {
    document.title = `Welcome to ${name}!`;
  }, [name]);
}
```

Now, React checks if the current value of name is different from the previous value of name, and only re-renders if that is true.

Let's take a look at another example:

```js
function App() {
  const features = ["feature1", "feature2"];

  useEffect(() => {
    // callback
  }, [features]);
}
```

In this case, React only stores a reference to the `features` array and compares it to the previous reference of the array. We have define the `features` array inside our component, meaning that after every render we recreate the array. When React compares the two references, it will always result on running the callback function. This is because we recreate the `features` array on every render which results in recreating the reference that leads to said array.

Note that this is not an issue when using strings, primitive values or numbers as these are compared by value rather than reference.

There are multiple options of dealing with this issue. The first consists of moving the dependency array outside of the component, although in some cases this might not be possible.

The second option is wrapping our value in a `useMemo()` hook which keeps our reference during re-renders:

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

The third and last option consists of using a deep compare hook that properly tracks the dependency references. We will not cover this option in this insight, but make sure to check out the resources for a link to a popular custom hook.
---
## Practice

Why would you use a dependency array in your `useEffect()` hook call?

???

* To reduce the number of re-renders.
* To increase the number of re-renders.
* To save the `state` value at a certain point in time.
* To have access to multiple versions of the `state`.