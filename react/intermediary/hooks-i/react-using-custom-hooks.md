---
author: kapnobatai136

type: normal

category: how to

aspects:
  - workout
  - deep

---

# Using custom hooks

---
## Content

Now that we know how to write our own custom hooks, let's see how to integrate them with components. Let's say that we have two components that make use of the same piece of code. We start off by creating our custom hook:

```js
function useCode(arg) {
  const [data, setData] = useState([]);

  useEffect(() => {
    // a side-effect here
    // such as an API call
  })

  return data;
}
```

Now that we have created the custom hook, we can simply use it anywhere inside our components:

```js
function Enki() {
  const code = useCode('some value');

  if (code === 'some value') {
    return <p>Foo</p>;
  }
  else
    return <p>Bar</p>;
}

function User(props) {
  const code = useCode('other value');

  while (props.name != 'default') {
    return <h1>{code}</h1>;
  }
}
```

Notice how we followed the rules by only calling hooks at the top-level of the function.

---
## Practice

Where can you call custom hooks inside a component?

???

* Only at the top-level.
* Anywhere.
* Only inside a `useEffect()` statement.

---
## Revision

Are custom hooks a reliable method for re-using logic?

???

* Yes.
* No.
* Only if written in a certain way.
* Only if used together with Redux.