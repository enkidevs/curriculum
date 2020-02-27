---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Source](https://github.com/30-seconds/30-seconds-of-interviews#what-is-the-purpose-of-callback-function-as-an-argument-of-setstate){website}'
  - '[Official Documentation](https://reactjs.org/docs/react-component.html#setstate){documentation}'

---

# Callback function in `setState`

---
## Content

When changing the state through the `setState` method, you can pass a callback function as a secondary argument. How does this callback function work and what is its purpose?

```js
setState({ topCandidate: 'You' }, () => {
  console.log('The top candidate for this job has been updated!')
})
```

In the example above, after the `topCandidate` state is updated and the component re-renders, the callback function is invoked. In this case, you would log 'The top candidate for this job has been updated!'.

Because `setState` is asynchronous, the callback function is used for any post action. Although it might seem like good practice, the React team recommends using a lifecycle method rather than this method. A good replacement could be the `componentDidUpdate` method for class components, or the effect hook.

---
## Practice

A ??? function can be used as a second argument for the `setState` method. 

This function is invoked ???.

Because `setState` behaves ???, the function is used for any post actions.

* callback
* after the component is re-rendered
* asynchronously
* synchronously
* before the component is re-rendered
* while the component is re-rendered

---
## Revision

Instead of using a callback function in the `setState` method, you can use the ??? method.

* componentDidUpdate()
* componentDidMount()
* componentWillUnmount()