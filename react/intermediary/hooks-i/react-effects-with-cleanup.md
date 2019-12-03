---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - new
  - workout
  - deep

---

# `useEffect()` with cleanup

---
## Content

When working with the `useEffect()` hook, there might be some cases where your side-effects require cleanup. One common example is setting up a subscription to an external data source, and to avoid introducing memory leaks you will have to cleanup after your effects.

In class components, this functionality would be split into three lifecycle methods:
- set up a subscription in `componentDidMount()`
- cleanup the subscription in the `componentWillUnmount()` and the `componentDidUpdate()` methods

When using function components, the hooks were designed such that adding and removing a subscription is kept together. The idea behind is that if you return a function for your `useEffect()` hook, React will run it at cleanup. Let's take a look at an example:

```js
function Enki() {
  const [isAvailable, setIsAvailable] = useState(null);

  useEffect(() => {
    // declare a function that changes
    // availability from true to false
    // and the other way round
    function handleStatus(status) {
      setIsAvailable(status.isAvailable);
    }

    // set up your subscription
    ShopAPI.subscribeToStatus(props.item.id, handleStatus);
    // and now you can declare your cleanup function
    return function cleanup() {
      ShopAPI.unsubscribeToStatus(props.item.id, handleStatus);
    };
  });

  if (isAvailable === null) {
    return 'Loading...';
  }
  return isAvailable ? 'Available' : 'Unavailable';
}
```

The function `cleanup()` is returned because this is how the *optional* cleanup mechanism was implemented, and that is how to tell React to cleanup after your effect.

Now, we know that the `cleanup()` function is ran when the component unmounts and we know that effects are ran after every re-render. This means that your `cleanup()` function will be used to clean effects from previous renders, before the effect is ran again.

The cleanup function does not have to be named `cleanup()`, and it doesn't have to be a standard JavaScript function. You can name it anything you want, and you can also return arrow functions:

```js
  useEffect(() => {
    // ...
    return randomName() {
      // ...
    }
  })

// or

  useEffect(() => {
    // ...
    return () => {
      // ...
    }
  })
```

---
## Practice

How do you cleanup after running an effect in a function component?

???

* By returning a cleanup function from the `useEffect()` hook.
* By calling a cleanup function immediately after the `useEffect()` hook.
* By writing a custom hook and calling it inside the `useEffect()` hook.

---
## Revision

How should the cleanup function of an `useEffect()` hook be named?

???

* It can use any name or use arrow functions.
* It should be named `cleanup()`.
* You can only use arrow functions.
* It should be named `clean()`.