---
author: mihaiberq
type: normal
category: tip
tags:
  - introduction
links:
  - >-
    [MDN -
    ASI](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar#Automatic_semicolon_insertion
    ){documentation}
  - >-
    [MDN -
    Block](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/block){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Styling Brackets


---

## Content

The style of the code shouldn't influence its performance in any way. The guidelines for what is the "right" style are primarily subjective. Commonly, developers would disagree on using `camelCase` versus `kebab_case` naming conventions, tabs versus spaces, or different positions of braces. 

For a function or block (`if`/`else`, `switch`, etc) in JavaScript, brackets are used to denote the body:

```javascript
function echo() {
  const status = 'right';
  return status;
}

// or
function echoNew()
{
  const status = 'right';
  return status;
}

// or even
function echoNewNew()         {
  const status = 'right';
  if(true)                    {
    console.log('Please stop.');
                              }
  else                        {
    console.log('I\'m serious.');
                              }
  return status;
                              }

console.log(
  echo(),
  echoNew(),
  echoNewNew()
);

// "Please stop."
// "right", "right", "right"
```

No matter how we place the brackets around a block, the behavior of the code inside is unaffected.


---

## Practice

Which of the following is a valid function definition?

```js
function A() {
  // ...
}

function B()
{
  // ...
}
```

???

- Both
- A
- B
