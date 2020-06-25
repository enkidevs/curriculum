---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - new
  - workout
  - deep

---

# Custom hooks

---
## Content

In a previous workout, we have learned how to use the `useState()` and `useEffect()` hooks. Although these provide a lot of functionality, you might encounter some special use cases where these two might just not be enough. In this case, React allows you to create your own custom hooks.

Your first question might be: why would I need custom hooks? Well, whenever you want to share the same logic between multiple functions, you just extract said logic to another function and re-use it[1].

A custom hook is an ordinary JavaScript function that can call other hooks (such as `useState()` and `useEffect()`).

```js
import React, {
  useState,
  useEffect
} from "react";

function useReminders(date) {
  const [data, setData] = useState([]);

  useEffect(() => {
    if (date >= "02/10/2019") {
      setData([...data, date]);
    }
  });

  return data;
}
```

Notice how the custom hook is named `useReminders(date)`. A common convention is that custom hooks should be named starting with "use" so that you can remember to always adhere to the hooks' rules[2].

With custom hooks there is no specific signature, and you decide what arguments it takes and what it returns (or if it returns anything).

---
## Practice

True or False?

We can call `useState()` and `useEffect()` inside custom hooks?

???

When writing a new custom hook, its name should usually start with ???.

* True
* "use"
* False
* "set"
* "custom"

---
## Revision

Which of the following functions is a custom hook and which is a React component?

```jsx
function A(argument) {
  const [data, setData] = useState([]);
  // ...
  return data;
}

function B(props) {
  const [data, setData] = useState([]);
  // ...
  return <p>{data}</p>
}
```

A: ???
B: ???

* custom hook
* React component

---
## Footnotes

[1: Custom hooks]
Because both components and hooks are functions, this functionality can be applied to both.

[2: Naming convention]
Although it is common practice to name custom hooks starting with "use", you can still use any name you want (this is not recommended by the creators of React). Just remember to always call hooks at the top-level, and only call hooks from React functions. Keep in mind that if you don't follow this convention, there is no way to automatically check for violations of rules of hooks.