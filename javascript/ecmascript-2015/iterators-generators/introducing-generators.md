---
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[MDN - Generators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator){website}'

inAlgoPool:

---

# Introducing Generators

---
## Content

ES6 provides an easier way of working with iterators called **generators**.

Mozilla Developer Documentation defines generators as "a special type of function that works as a factory for iterators".

Let's rewrite our simple example that iterates through 1 to 5 to use a generator function.

To indicate that a function is a generator function we add an asterix or star after the function keyword.

The positioning of this is not important so it can be next to the function keyword in the middle or next to the name.

Generator functions are very special as they maintain their execution context between method calls.

We can tell our generator function when we want to return a value and exit by using the **yield** keyword.

When the generator is next called, it will return to the next statement just after the **yield** statement.

The below example shows one way to implement our 1-5 iterator as a generator:

```
function* getGenerator(){
  var currentNumber = 1;
  while(currentNumber<6){
  yield currentNumber++;
 }
}

var gen = getGenerator();
gen.next(); //{value: 1, done: false}
gen.next(); //{value: 2, done: false}
gen.next(); //{value: 3, done: false}
gen.next(); //{value: 4, done: false}
gen.next(); //{value: 5, done: false}
gen.next(); //{value: undefined, done: true}
```

