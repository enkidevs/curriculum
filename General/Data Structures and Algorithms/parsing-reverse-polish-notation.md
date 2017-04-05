# Parsing Reverse Polish Notation
author: mihaiberq

levels:

  - basic

type: normal

category: how to

---
## Content

Postfix notation is used in *stack-based* languages and *pipeline-based* systems, like Unix pipelines.

For calculators, an advantage of using this notation comes from the fact that fewer operations are required to analyse an expression, since there is no need to take parentheses into consideration.

The algorithm to calculate a RPN expression is as follows:
- While there is input left (starting from the left-most side):
  - Read the next token.
  - If the token is a value, push it onto the stack.
  - If the token is an operator, pop *n* values (required by the operator) from the stack, evaluate the expression then push the result back. Return an *error* if there aren't sufficient items in stack
- If there is more than one value left in the stack after reading all the input, return an *error*.
- Else, return the *value*.

`2 5 + 3 ×` would be evaluated as:
```
Stack = []
2 - operator: push(2); Stack = [2]
5 - operator: push(5); Stack = [2,5]
+ - operand: push(pop() 'operand' pop())
    which translates to push(5+2)
    Stack = [7]
3 - operator: push(3); Stack = [7,3]
× - operand: push(pop() 'operand' pop())
    push(3×7); Stack = [21]

// no more input, stack has 1 value
// return 21
```

---
## Practice

What values would be left in the stack after the evaluation of `10 5 * 2 + 3 3`?

???
* [52,3,3]
* [55,3]
* [55]
* [58]
* [23,3]

---
## Revision

What are the contents of the stack after evaluating a `valid` postfix expression?

???
* A single value.
* Two values.
* A single operator.
* The stack is empty.
