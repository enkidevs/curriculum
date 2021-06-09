---
author: kapnobatai136
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# First Function


---

## Content

A function is a command that, when executed, takes in data and produces out a result. 

We can think of a function as divided into three parts.

1. **input**: the data given to the function
2. **body**: the commands (instructions) performed within the function
3. **output**: the result sent out of a function

![function shape](https://img.enkipro.com/a33d19a96c045dce053cb08993c19b39.png)

> 💡 The inputs to a function are also called **arguments**.

> 💡 The outputing of a result from a function is also called **returning** a result.

Here's how you can write the `multiplyTwoNumbers` function using our own made-up[1] language:

```plain-text
FUNCTION multiplyTwoNumbers
  INPUT num1, num2
  INSTRUCT result = multiply(num1, num2)
  OUTPUT result
```

To call this function we write its name, followed by a pair of `()`.

```plain-text
INSTRUCT multiplyTwoNumbers(5, 3)
```

> 💡 If you take a closer look, the `multiply` within `multiplyTwoNumbers` is another function! Functions can call other functions. 

In the above code, the *output* of `multiply` is saved into a variable called `result` and then that variable is passed out as the *output* of `multiplyTwoNumbers`.


---

## Practice

A function is made out of three parts:

1. the data given to the function
2. the commands performed within the function
3. the result sent out of a function

Match the definitions with their name:

```plain-text
1. ???
2. ???
3. ???
```

- input
- body
- output


---

## Revision

The data given to the function is called an ??? and the result the function produces is called an ???

- input
- output
- body
- stuff
- signal
- hardware


---

## Footnotes

[1: This is a Made Up Language]

We're using a made-up programming language on purpose. 

> This is also called [pseudo-code](https://enki.com/glossary/general/pseudocode).

The point is to demonstrate the basic concepts that all languages share before diving into specifics of any particular language.

Once you understand what functions, inputs, loops etc are, you can pick up any programming language more easily!
