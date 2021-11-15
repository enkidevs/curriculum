---
author: kapnobatai136
type: normal
category: how-to
links:
  - '[Rules of hooks](https://reactjs.org/docs/hooks-rules.html){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Rules of hooks


---

## Content

You have learned how to use the `useState()` and `useEffect()` hooks, but until now we have only called these methods once. An important feature of hooks is that you can have multiple `useState()` and `useEffect()` in the same function component. Here's an example:

```jsx
function App() {
  const [foo, setFoo] = useState("First");

  useEffect(() => {
    localStorage.setItem(
      "First state",
      foo
    );
  });

  const [bar, setBar] = useState("Second");

  useEffect(() => {
    localStorage.setItem(
      "Second state",
      bar
    );
  });

  // ...
}
```

Now that you know your function components can contain multiple hook calls, it is time to learn the rules that apply to hooks.

The first rule is **always call hooks at the top level**. 

To allow React to correctly preserve the state of hooks between multiple `useState()` and `useEffect` calls, you can't call hooks inside loops, conditions, or nested functions. This rule ensures that the hooks are called in the exact same order each time a component renders.

The second rule is **only call hooks from React functions**. 

Hooks were designed to work when called either inside React function components or inside a custom hook (concept which will be taught at a later time). Hooks can't be called from regular JavaScript functions.

To help developers follow these rules more easily, the React team has created an ESLint plugin called `eslint-plugin-react-hooks`. A quick way to add it to your project is to install it from NPM[1]:

```shell
npm i eslint-plugin-react-hooks --save-dev
```


---

## Practice

How many times can you call hooks in React?

???

- as many times as you want
- only once
- twice per hook


---

## Revision

In which of the following can you call React hooks?

???

Can you have more than one hook in a component?

???

- React functions
- yes
- loops
- conditions
- nested functions
- no
- maybe
- yes, but only two hooks per component


---

## Footnotes

[1:NPM]
NPM (short for Node Package Manager) is on online repository used for the publishing of open-source Node.js projects. At the same time, it also provides a command-line utility for interacting with this repository, which helps with package installation, version management, and dependency management.
