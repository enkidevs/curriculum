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
  // We initiate the state with null
  const [info, setInfo] = useState(null);

  // we run an effect
  // to grab the data
  // from our API
  useEffect(() => {
    fetch("/information").then(data => {
      setInfo(data);
    });
  }, []);

  // we show the data
  // from the API
  return (
    <div>
      <p>Name: {info.name}</p>
      <p>Age: {info.age}</p>
    </div>
  );
}
```

Normally, you would expect this function to work without a problem. This is a common mistake because while the data is being fetched though the `useEffect()` hook, the component is rendered with the initial state (remember, hooks run at the end of render). In our case, the initial state is `null` but we try to read a property off it as if it was an object. We are effectively trying to access `null.name` and `null.age`, which do not exist. Here are two possible ways of overcoming this issue:

1. Properly defining the initial state:
```jsx
function Person() {
  // we expect the info state
  // to be an object
  const [info, setInfo] = useState({
    name: "",
    age: 0
  });

  getInfo = () => {
    fetch("/information").then(data => {
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

2. Use a loading flag while waiting for the API call:
```js
function Person() {
  const [info, setInfo] = useState(null);
  const [isLoading, setIsLoading] = useState(info === null);
  useEffect(() => {
    fetch("/information")
      .then(data => {
        setInfo(data);
      })
      .finally(() => {
        setIsLoading(false);
      });
  }, [info]);
  // if the info state has not been updated
  // return the Spinner component
  // indicating that the call has not been completed
  if (isLoading) {
    return <Spinner />;
  }
  // otherwise, we return our paragraphs
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

What will be the `state` of the `<Test>` component?

```jsx
function Test() {
  const [state, setState] = useState(0);

  useEffect(()=> {
    setState(1);
  }, []);

  return <p>{state}</p>;
}
```

???

* `0`
* `1`
* `null`
* `undefined`