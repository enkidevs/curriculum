---
author: alexjmackey

levels:
  - medium
  - advanced

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout

inAlgoPool: false

links:
  - '[MDN - Generators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator){website}'

---
# Introducing Generators

---
## Content

ES6 introduced an easier way of working with iterators called **generators**. Mozilla Developer Documentation defines generators as "a special type of function that works as a factory for iterators".

Let's rewrite our simple example that iterates through 1 to 5 to use a generator function. To indicate that a function is a generator function we add an asterisk or star (`*`) after the function keyword. The positioning of this is not important so it can be next to the function keyword in the middle or next to the name.

```js
//all of these are fine
function * gen () {

}

function* gen () {

}

function *gen () {
  
}
```

Generator functions are very special as they maintain their execution context between method calls. One way to think about this is that a generator is a function that can return multiple times. We can tell our generator function when we want to return a value and exit by using the `yield` keyword. When the generator is next called, it will return to the next statement just after the `yield` statement.

The below example shows one way to implement our 1-5 iterator as a generator:

```javascript
function* getGenerator() {
  var currentNumber = 1;
  while (currentNumber < 6) {
    yield currentNumber++;
  }
}

var gen = getGenerator();
gen.next(); // {value: 1, done: false}
gen.next(); // {value: 2, done: false}
gen.next(); // {value: 3, done: false}
gen.next(); // {value: 4, done: false}
gen.next(); // {value: 5, done: false}
gen.next();
// {value: undefined, done: true}
```

---
## Practice

Fill in the missing gaps of the following generator function:

```javascript
??? myGenerator() {
  ??? 5;
}

const gen = myGenerator();
gen.next();
// {value: 5, done: false}
gen.???;
// {value: undefined, done: true}
```

* function*
* yield
* next()
* isDone()
* return
* done()
* function
* () =>
* class
* generator

---
## Revision

Can generator functions maintain their execution context between method calls?

???

* Yes
* No, because the memory needed would be to big
* No, because of the JavaScript memory model
* Only if the calls are done one after the other
 
