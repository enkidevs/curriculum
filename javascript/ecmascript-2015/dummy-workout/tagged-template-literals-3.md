---
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals){website}'

---
# Tagged Template Literals 3

---
## Content

With access to literals and replacement values you can use Tagged Template Literals to perform additional processing logic on a string and even replace the string entirely - for example:

```javascript
function myFunc(strings, sub){
 return "Goodbye " + sub;
}

let company="Enki";
myFunc `Hello ${company} hows it going?`
// "Goodbye Enki"
```
 
