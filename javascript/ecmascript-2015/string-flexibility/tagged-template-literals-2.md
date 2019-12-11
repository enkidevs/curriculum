---
author: lizTheDeveloper

levels:
  - medium
  - advanced

type: normal

category: feature

inAlgoPool: false

tags:
  - workout
  - es6
  - deep
  - strings

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals){website}'

aspects:
  - workout
  - deep


---
# Tagged Template Literals

---
## Content

For more advanced templating you can use **Tagged Template Literals**, which allow you to define a function that does multiple processing steps in order to produce a string. Our template becomes a function, rather than a simple string, allowing us to abstract the templating process.

```javascript
let price = 5;

function currency(strings, priceValue){
  const str0 = strings[0]; // $ or €
  const str1 = strings[1]; //.00

  let currencyName = '';
  if (str0.indexOf('$') !== -1) {
    currencyName = ' USD';
  } else if (str0.indexOf('€') !== -1) {
    currencyName = ' EUR';
  }
  return str0 + priceValue +
    str1 + currencyName;
}

console.log(currency`$${price}.00`)
// $5.00 USD
console.log(currency`€${price}.00`)
// €5.00 EUR
```

The `strings` parameter is an array of the normal strings that are placed in-between the substitutions.
The `priceValue` parameter receives the value passed in to the first template literal substitution in the string to be interpolated.

Subsequent values appear as additional arguments, a best practice is to use the **rest** operator to map values to an array rather than define each argument:

```javascript
function price(strings, ...substitution){
 ...
}
```

---
## Practice

Consider the following tagged template function call:

```javascript
myTag`Number ${2} is`
```

And it's definition:

```javascript
function myTag(strings, ...substitutions) {
  ...
}
```

What will `strings` and `substitutions` equal to?

```javascript
console.log(strings)
// ???
console.log(substitutions)
// ???
```

* ['Number ', ' is']
* [2]
* 2
* 'Number'
* 'is'
* ['Number', 'is']
* [['Number', 'is'], 2]
* [0, 2]
* ['Number', 'is', 2]
* ['Number ', ' is', 2]

---
## Revision

Given the following function:

```javascript
function processNumber(strings, value) {
  let ret = strings[0] + value;
  if (value % 2 === 0) {
    ret += ' is even'
  } else {
    ret += ' is odd'
  }
  return ret;
}
```

How would you call the the tagged template function such that the log statement is true?

```javascript
const number = 2;
console.log(
  ???`Number ???{???}`
)
// Number 2 is even
```

* processNumber
* $
* number
* processNumber(
* processNumber()
* this.processNumber(
* String.template(processNumber
