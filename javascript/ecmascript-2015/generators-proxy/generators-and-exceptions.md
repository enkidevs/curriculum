---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN -
    Generators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator){website}
  - >-
    [MDN - Exception
    Handling](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator/throw){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Generators and Exceptions


---

## Content

All code inside a generator despite appearances works synchronously.

This means that error handling occurs as you would expect.

The example below will catch and log out any exceptions:

```javascript
function* getGenerator() {
  while(true) {
    try {
      console.log("normal")
      yield;
    } catch(err) {
    console.log(
      "something bad: " + err
      );
    }
  }
}

g = getGenerator();
```

We can use generators **throw** method to create an exception.

The exception occurs at the point where the generator is paused from the previous yield statement.

```javascript
g.throw("bad error");
```


---

## Practice

What will be the output of the following generator calls?

```javascript
function* myGen() {
  while(true) {
    try {
      yield 'enki'
    } catch(err) {
      console.log('Error')
    }
  }
}

const g = myGen()
g.next()
// { value: 'enki', done: false }
g.throw('abc')
// ???
// ???
```

- Error
- { value: 'enki', done: false}
- nothing
- Error('abc')
- abc


---

## Revision

What syntax should be used to catch errors within generators?

???

- try/catch
- throw new Error
- gen.catch()
- gen.throw()
- if/else
 
