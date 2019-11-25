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
function User() {
  // define the state
  const [name, setName] = useState('user');

  const updateUser = (user) => {
    // assign the `user.name` field 
    //to the `name` state
    name = user.name;
    // use the setter method
    // `setName` to set the state
  }

  return (
    <button onClick={() => updateUser('Enki')} />
  )
}
```

Suppose we click the button returned from `<User />`. Although this code might seem correct at a first glance, the UI won't actually reflect this change because the `name` is updated on the same object reference (`name = user.name`), which doesn't trigger a re-render.

To circumvent this when using function components, use the setter method returned by `useState()`:

```jsx
function User() {
  // ...

  const updateUser = (user) => {
    // use the setter method to
    // directly update the state
    setName(user)
  }

  // ...
}
```

Remember, you should **never** mutate state.

---
## Practice

Which of the following represents a good reason to mutate `state`?

???

* You should never mutate state.
* To write less code.
* To increase your app's performance.
* To have easier access to nested values.
