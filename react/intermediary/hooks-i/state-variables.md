---
author: kapnobatai136

type: normal

category: how to

aspects:
  - workout
  - deep

---

# One or many state variables

---
## Content

When using class components, your state would usually be nested and you'd only have to call `setState()` once. With hooks, you would usually set the state as a singular value `useState('Enki')` but you can also use objects. For example, let's define a state that records the position of a character as well as the size of the screen:

```js
function Char() {
  const [pos, setPos] = useState({ x: 0, y: 0, width: 100, height: 100 });
  // ...
}
```

Although nesting state is useful in some cases, let's see what happens when we want to change the `pos` state. Assuming that the screen size does not change, we only want to modify the `x` and `y` values. In a class component, `this.setState` merges the updated fields into the object, but in a function component we have to manually do the merge:

```js
function Char() {
  // ...
  useEffect(() => {
    function handleCharMovement(e) {
      // We have to spread the state so that
      // we don't lose the width and height
      setState(state => ({ ...state, x: e.pageX, y: e.pageY }));
    }
    window.addEventListener('charmove', handleCharMovement);
    return () => window.removeEventListener('charmove', handleCharMovement);
  }, []);
  // Note that this implementation
  // is over-simplified
}
```

When updating the state in a function component, we are effectively replacing the entirety of its fields and values. Because we aren't updating the whole `pos` state, we have to spread it using the `setState(state => ({ ...state }))` syntax to ensure that all our fields are kept.

It is considered good practice to group state variables based on values that tend to change together. In our case, we would group the position into a state variable and the dimension into another one:

```js
function Char() {
  const [pos, setPos] = useState({ x: 0, y: 0 });
  const [size, setSize] = useState({ width: 100, height: 100 });
}
```

---
## Practice

Can you have a nested state when using function components?

???

Compared to class components, when updating the state in a function component we ??? the fields and values.

* Yes.
* replace
* No.
* merge

---
## Revision

Which of the following is considered to be the correct way of updating state in a function component?

```js
function Foo() {
  const [state, setState] = useState({ a: 0, b: 0, c: 'foobar' });

  // A
  setState({a: 1, b: 1});

  // B
  setState({ ...state, a: 1, b: 1 });

  // C
  setState({a: 1});
  setState({b: 1});
}
```

???

* B
* A
* C