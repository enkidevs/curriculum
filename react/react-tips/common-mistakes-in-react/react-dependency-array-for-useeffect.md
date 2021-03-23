---
author: kapnobatai136
type: normal
category: tip
links:
  - >-
    [Use deep compare
    effect](https://github.com/kentcdodds/use-deep-compare-effect){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
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

Now, React will only re-run the hook function if the current value of `name` is different from its previous value.

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

Note that this is not an issue when using primitive values, such as strings or numbers, as these are compared by value rather than reference.

There are multiple options of dealing with this issue which we will discuss in the next insight. 


---

## Practice

Why would you use a dependency array in your `useEffect()` hook call?

???

- To reduce the number of re-renders.
- To increase the number of re-renders.
- To save the state value at a certain point in time.
- To have access to multiple versions of the state.


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
