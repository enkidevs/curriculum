---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [Iteration
    protocols](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Iterator Protocol


---

## Content

In our previous example above we have not implemented all of the iterator protocol or agreement.

There is an issue with our current implementation - what happens when have iterated through all the values?

The iterator protocol defines that we should also return a boolean property called `done` that indicates when we have iterated through the entire sequence.

You can think of the iterator contract as having the following structure:

```javascript
Iterator {
  next() : {value, done};
}
```

Let’s modify our return statement to use this:

```javascript
//code omitted
return {
  next: function() {
    if (nextIndex < num.length) {
      let valueToReturn = num[nextIndex];
      nextIndex++;
      return {
        value: valueToReturn,
        done: false
      };
    } else {
      return { done: true };
    }
  }
};
```


---

## Practice

Fill in the following code expressing the iteration protocol in JavaScript:

```javascript
Iterator {
  ???(): {???}
}
```

- next
- value, done
- done
- value
- getAll
- get
- show
- advance
- isFinished


---

## Revision

Which of the following is not part of the iteration protocol?

???

- a method to get all the items at once (getAll)
- a method to advance the iteration (next)
- a way of telling when the iteration is done (done)
 
