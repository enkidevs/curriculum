---
author: kapnobatai136
 
aspects:

  - new

  - workout

  - deep

type: normal

category: how to

links:
  - '[State hooks](https://reactjs.org/docs/hooks-state.html){documentation}'

---

# State hooks

---
## Content

Let's start off by looking at how you would usually initialize a state in a class component:

```js
class Enki extends React.Component(
  constructor(props) {
    super(props);
    this.state = {
      name: "Enki"
    };
  }
)
```

But what if you wanted to use function components? In a function component you can't assign or read `this.state`. This is where hooks come in:

```js
import React, { useState } from "react";

function Enki() {
  const [name, setName] = useState("Enki");
}
```

Both of the examples above provide the same functionality. Note that you must import the `useState` hook from the `'react'` library.

By calling the `useState()` hook you declare a *state variable*, which in our case is called `name`. This *state variable* can take any name you want, and it represents a way to preserve some values between the function calls. Basically, by calling `useState()` you enable the functionality of `this.state` for function components.

The only argument you pass to the `useState()` hook is the **initial state**, and if you want to store two different values in `state` you can call the `useState()` hook twice. The state doesn't have to be an object, but it can be if you need it.

The `useState()` hook returns a pair of values that corresponds to the current state and a function used to update it. It makes use of array destructuring[1], and for this reason you call:

```js
const [name, setName] = useState("Enki");
```

Now that you have defined the `name` state you can use it anywhere in your component:

```jsx
import React, { useState } from "react";
import ReactDOM from "react-dom";

function Enki() {
  const [name, setName] = useState("Enki");

  return <p>Hello, my name is {name}</p>;
}

ReactDOM.render(
  <Enki />,
  document.getElementById("root")
);
```

---
## Practice

Complete the following code that defines the `age` state with a value of 23:

```js
function Person() {
  const [???, setAge] = ???(???);
}
```

* `age`
* `useState`
* `23`
* `this.setState`
* `setState`

---
## Revision

Complete the following code to define the `count` state and use it in the component's body:

```jsx
function Counter() {
  const [???, setCount] = ???(0);

  return (
    <div>
      <p>
        The button has been clicked ???
        {" "}times
      </p>
      <button
        onClick={() => ???(count + 1)}
      />
    </div>
  );
}
```

* `count`
* `useState`
* `{count}`
* `setCount`
* `setState`
* `this.setState`
* `this.count`
* `this.setCount`

---
## Footnotes

[1:Array destructuring]
In JavaScript, the destructuring assignment syntax allows you to unpack values from arrays (or properties from objects) into distinct variables. In our case, the `useState()` returns and array with the current value of the state as element `[0]`, and a function that modifies the state as element `[1]`. We use array destructuring to assign the elements names because it is a bit confusing referring to them by their index.
