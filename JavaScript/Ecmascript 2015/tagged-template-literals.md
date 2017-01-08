# Tagged Template Literals
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

ES6 introducesa new feature called template literals that make it easier to work with strings by replacing values and defining strings on multiple lines:

```
var company = 'Enki';
console.log(`Hello ${company} hows it going?`); //Hello Enki hows it going?
```

Tagged template literals allow you to process the string and replacement values. 

They are created when a function call is specified before the literal itself e.g.

```
myFunc `Hello ${company} hows it going?`
```

But what input parameters does myFunc receive?

myFunc will receive 2 sets of parameters, literals and replacement values.

We can see this in action by redefining myFunc and logging the input:

```
function myFunc(strings, subValue){
console.log(strings);  
console.log(subValue) 
}
myFunc 'Hello ', ' ', ‘hows’, ‘it’,’going’)
// ["Hello ", " hows it going?", raw: Array[2]]
// enki
```
The tag function receives two types of inputs – literals such as Hello, hows, it and going and substitutions – in this case just company.
---