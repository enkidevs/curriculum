---
author: stefan.stojanovic

levels:
  - beginner
  - basic
  
aspects:
  - introduction
  - new

type: normal

category: must-know

standards: 
  javascript.control-flow.0: 10
  javascript.control-flow.1: 10

links:
  - '[MDN docs on ternary](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Conditional_Operator){website}'

---
# ternary-operator
---
## Content

The `?` operator is the only ternary operator in JavaScript. Ternary meaning; accepts 3 operands.

The ternary operator can be used instead of the `if-else` statement to make your code shorter whilst doing the exact same thing.

Let's say we have this `if-else` statement that returns the appropriate drink based on your age:
```javascript
if (aboveDrinkingAge) {
   return pourAlcohol();
} else {
    return pourMilkshake();
}
```
Now, look at the ternary operator that does the exact same thing:
```javascript
return aboveDrinkingAge ? 
       pourAlcohol() : pourMilkshake()  
```

Note, the ternary operator is the only JavaScript operator that takes 3 operands.

For better visualization, here is the syntax for the `if-else` statement and the ternary operator:
```javascript
// if-else

if (condition){
return ifExpressionTrue;
} else {
return ifExpressionFalse;
}

// ternary-operator

return condition ? 
       ifExpressionTrue : ifExpressionFalse
```
(The expression is put into two lines to accommodate screen size)
Breaking down the above example.

The `condition` is the thing you're actually testing. Whereas the two expressions are the true/false result of your condition. 

The `?` and the `:` are used to separate the condition and the "true" and "false" expressions. Anything after the `?` and before the `:` is considered true. This `true` expression is what is returned if the condition is evaluated to true. On the other hand, everything after the `:`, or the false expression, is what is returned if the condition is considered false.

Another example where our condition is a function that checks if a number is prime and returns a simple yes or no string:
```javascript
return isPrimeNumber() ? "Yes!" : 'No!'  
```

In the above example, we call a function named `isPrimeNumber()` as our condition. Next, we have the true and false outputs depending on the evaluation of that function. If the condition evaluates to true, anything between the `?` and `:` is executed or in this case a simple `Yes!` message. On the other hand, if the condition doesn't evaluate to true, anything after the `:` is returned instead. Or in this case, the `No!` message.

Furthermore, just how you can have multiple if-else statements nested together, you can also nest multiple ternary operators to test multiple conditions. 

Let's say you're buying something at a shop where the discount depends on the items bought. The more items you purchase the higher the discount.
```javascript
var discount = 0;

discount = 
threeToFiveItems ? fivePercent() : 
sixToNineItems ? tenPercent() : 
tenToThirteen ? fifteenPercent() :
fifteenOrMoreItems ? twentyPercent()
```

In the above example, we have a discount variable created with the initial value set to `0`. Next, the `discount`'s new value is determined by the ternary operators. If you buy 3-5 items, your discount will be `5%`, if you buy 6-9, discount = `10%`, 10-13 items, discount = `15%`, above 15 items, discount = `20%` and the last statement (else) is executed if you have less than 3 items.

However, you should be careful when nesting ternary operators because the code can become difficult to read.

---
## Practice

Looking at the below `if-else` statement:
```javascript
if (isEven) {
   return 'Is even';
} else {
    return 'Is odd';
}
```
Create the same expression using the ternary operator.
```
return ??? ??? 
       ??? ??? ???
```

* `isEven`
* `?`
* `'Is even'`
* `:`
* `'Is odd'`
* `if`
* `else`


---
## Revision

Which of these characters is called the ternary operator?

???

* `?`
* `/`
* `:`
* `\`
* `§`

