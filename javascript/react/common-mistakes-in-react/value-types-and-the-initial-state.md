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

# Value types and the initial state

---
## Content

Let's start this insight by taking a look at an example:

```jsx
function Person() {
  const [info, setInfo] = useState(null);

  getInfo = () => {
    fetch("/api/profile").then(data => {
      setInfo(data);
    });
  };

  return (
    <div>
      <p>Name: {info.name}</p>
      <p>Age: {info.age}</p>
    </div>
  );
}
```

Normally, you would expect this function to work without a problem. This is a common mistake because while the data is being fetched though the `getProfile()` call, the component is rendered with the initial state. In our case, the initial state is `null` which leads to a rendering error. Not providing an initial state for nested objects, or defining an empty array as initial state and then trying to access the n-th element would lead to the same error. For these reasons, it is important to define the initial state as close to the updated state as possible. In our case, we should've wrote:

```jsx
function Person() {
  const [info, setInfo] = useState({
    name: "",
    age: 0
  });

  getInfo = () => {
    fetch("/api/profile").then(data => {
      setInfo(data);
    });
  };

  return (
    <div>
      <p>Name: {info.name}</p>
      <p>Age: {info.age}</p>
    </div>
  );
}
```

---
## Practice

What value should you use when defining the initial state?

???

* A value that is as close to the updated state as possible.
* `null`
* `""`
* `undefined`
* Any value.
* `{}`
* `[]`