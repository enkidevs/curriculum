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

# Passing values to Generators

---
## Content

Generators next method also accepts a parameter.

When you pass in a parameter it is assigned to the result of the **yield** statement (if you don’t pass anything in this is undefined).

We could for example use this functionality to reset our number sequence when 0 is passed in:

```

function* getGenerator(){
 var currentNumber = 1;

 while(currentNumber<6){
  var input = yield currentNumber++;
  if(input==0) currentNumber =1;
 }
}

var g=getGenerator();

g.next().value //1
g.next().value //2
g.next().value //3
g.next(0).value //1
```

There is however also a gotcha to watch out for when passing values to generators.

This is best implemented with an example - the below function simply logs to the console any values passed in:

```
function* getGenerator(){
 while(true){
  console.log(yield);
 }
}
```

However, the first value we pass in will be ignored!

```
var g = getGenerator();
g.next("a") //ignored
g.next("b") // b
```

This is because the first time we get our generator we are at the beginning of the function and there is nothing to log from the yield statement.

The solution is to simply call the generators next method once:

```
var g = getGenerator();
g.next();
g.next("a") //a
g.next("b") // b
```

