---
author: lizTheDeveloper

levels:

  - medium

  - advanced

type: normal

category: feature

tags:

  - workout

  - es6

  - deep

  - strings


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals){website}'

inAlgoPool:

---
## Content
# Tagged Template Literals

For more advanced templating you can use **Tagged Template Literals**, which allow you to define a function that does multiple processing steps in order to produce a string. Our template becomes a function, rather than a simple string, allowing us to abstract the templating process.

```
let price = 5;

function currency(strs, input){
  let text = strs[0] + input + strs[1];
  if (input.indexOf("$")) text += "USD"
  if (input.indexOf("€")) text += "EUR"
}

currency`$${price}.00` // $5.00 USD
currency`€${price}.00` // €5.00 EUR
```

The `input` parameter receives the value passed in to the first slot in the string to be interpolated. Subsequent values appear as additional arguments, a best practice is to use the **rest** operator to map values to an array rather than define each argument:

```
function price(strings, ...substitution){

}
```

