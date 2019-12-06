---
author: kapnobatai136
  
aspects:

  - new

  - workout

  - deep

type: normal

category: must-know

links:
  - '[Introduction to Hooks](https://reactjs.org/docs/hooks-intro.html){documentation}'

---

# What are hooks?

---
## Content

Hooks represent a way of using state with your function components. They are the great for reusing stateful logic and enable you to use more of React's features without having to use classes.

There are three main types of hooks:
- State Hooks
- Effect Hooks
- Custom Hooks

Before hooks, many React components would eventually grow to contain many unrelated groupings of stateful logic and side effects. A component could perform some data fetching in the `componentDidMount` or `componentDidUpdate` lifecycle methods, while the `componentDidMount` could also contain some event listeners. Hooks allow us to separate these unrelated parts by encapsulating related logic into functions.

Now, let's take a look at the following code:

```jsx
class BookStatus extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      count: 0,
      isAvailable: null
    };
    this.handleStatus 
      = this.handleStatus.bind(
        this
      );
  }

  componentDidMount() {
    getStatus(
      this.props.book.id,
      this.handleStatusChange
    );
    this.setState({ count: count + 1 });
    document.title 
      = `There are ${this.state.count} books available.`;
  }

  componentDidUpdate() {
    document.title 
      = `There are ${this.state.count} books available.`;
  }

  componentWillUnmount() {
    getStatus(
      this.props.book.id,
      this.handleStatusChange
    );
  }

  handleStatusChange(status) {
    this.setState({
      isAvailable: status.isAvailable
    });
  }
  // ...
}
```

What the above component does is count the number of available books and handle their status. Notice how the `componentDidMount()` and `componentWillUnmount()` methods contain unrelated logic. Now, if we would've used function components, the code would've looked something like this:

```jsx
function BookStatus() {
  const [count, setCount] = useState(0);
  const [isAvailable, setIsAvailable] = useState(null);
  
  useEffect(() => {
    document.title = `There are ${count} books available.`
  }, [isAvailable]);

  useEffect(() => {
    function handleStatusChange(status) {
      setIsAvailable(status.isAvailable);
    }

    getStatus(props.book.id, handleStatusChange);
    setCount(() => count + 1);
    return () => {
      unsubscribe(props.book.id, handleStatusChange);
    };
  });

  // ...
}
```

Both components have the same functionality, but you can already see the differences. When using hooks, we can group related stateful logic and side effects together, effectively separating said group from unrelated code.

---
## Practice

Which of the following does not represent a React hook?

???

* lifecycle hook
* state hook
* effect hook
* custom hook

---
## Revision

Complete the following code that defines the `foo` state with the initial value of `null`:

```jsx
function Revision() {
  const [???, setFoo] = ???(???);

  // ...
}
```

* `foo`
* `useState`
* `null`
* `setState`
* `this.useState`
* `this.setState`
