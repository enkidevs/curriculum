# If & if-else

An `if` is a conditional statement that executes a piece of code if the condition is `true`.

An `else` statement is used after the `if` and it executes the code if the `if` condition evaluates to `false`.

`if-else` statements can be chained.

```javascript
let number = 3;

if (number > 3) {
  console.log(number, "is greater than 3");
} else if (number < 3) {
    console.log(number, "is smaller than 3");
} else {
  console.log(number, "is equal to 3");
}
```
