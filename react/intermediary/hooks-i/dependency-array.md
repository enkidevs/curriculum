---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - workout
  - deep

---

# Dependency array for the `useEffect()` hook

---
## Content

Previously, you have learned how the `useEffect()` hook works, and how to apply it. Let's take a look at the following example:

```js
function Enki() {
  // ...
  useEffect(() => {
    // Do a side-effect
    // after every render
    item.display = 
      `You have ${item.count} ${item.name}.`;
  });
  // ...
}
```

By default, `useEffect()` is ran after the first and after every subsequent render. Sometimes, this might cause performance problems. In class components, this could've been solved by comparing `prevProps` and `prevState` with the `props` and `state` inside `componentDidUpdate()`:

```js
class Enki extends React.Component {
  // ...
  componentDidUpdate(prevProps, prevState) {
    if (
      prevState.item.count !==
      this.state.item.count
    ) {
      items = (
        <p>
          You have {this.state.item.count}
          {" "}items.
        </p>
      );
    }
  }
}
```

Because this functionality was commonly used, it was built into the `useEffect()` hook. Now, when using function components, you can skip effects if certain values haven't changed between re-renders. The code above can be re-written like so:

```js
function Enki() {
  // ...
  useEffect(() => {
    items = (
      <p>You have {item.count} items.</p>
    );
  }, [item.count]);
}
```

Now, after every render, React will compare the previous value of `item.count` with the current value of `item.count`[1], and if there is no change in value then the effect is skipped. If the dependency array is left empty, `useEffect(() => { ... }, [])`, then the effect is ran only once on mounting and once on dismounting.

It is important to include all the values from the component's scope (`state` and `prop`s) that *change over time* and that *are used by the effect*. Otherwise, your code will compare stale values and result in undesired consequences (too many or not enough effect calls).

---
## Practice

Complete the following code such that the effect is ran only when the `name` state changes:

```js
function Test() {
  const [name, setName] = useState("");

  ???(() => {
    // side-effect
  }, ???);
}
```

* `useEffect`
* `[name]`
* `useState`
* `[setName]`
* `[name, setName]`
* `[]`

---
## Revision

How would you reproduce the following code using function components?

```js
class Revision extends React.Component {
  constructor(props) {
    super(props);
    this.state = { count: 0 };
  }

  componentDidUpdate(prevProps, prevState) {
    if (prevState.count !== this.state.count) {
      document.title = `You have ${this.state.count} items`;
    }
  }
}

function A() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    document.title = `You have ${count} items.`
  }, [count])
}

function B() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    document.title = `You have ${this.state.count} items.`
  }, [this.state.count])
}

function C() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    document.title = `You have ${count} items.`
  }, [])
}
```

???

* A
* B
* C

---
## Footnotes

[1: Object.is]
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