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
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Styling Brackets Continued


---

## Content

Although flexible, the location of brackets sometimes isn't up for debate. Let's take a look at an example:

```javascript
function right() {
  return {
    status: 'right',
  };
}

function wrong() {
  return
  {
    status: 'wrong',
  };
}
```

At the first glance, both functions seem to return the same object containing the property `status`. However, the output is as follows:

```javascript
console.log(right().status);
// right

console.log(wrong().status);
// undefined
```

What is going on?

It turns out that JavaScript is trying to help us write correct code. 

If we forget to add a semicolon after a line of code, JavaScript tries to be a good friend and inserts a semicolon for us. This property is called *automatic semicolon insertion* (ASI). 

In the code above, when JavaScript notices a new line after a `return` statement, it assumes that the intention was to end the code there and return from the function, so it inserts a `;`[1].

The code above is seen by JavaScript like this:

```javascript
function wrong() {
  return; // equivalent to return undefined;
  //    ^ this semi colon is inserted for us
  // the code below is ignored because
  // of the return
  {
    status: 'wrong'
  };
}
```

Check out the Read More links for more details on ASI and don't forget to write your `;`.


---

## Practice

In order for the brackets placement to be less prone to errors and consistent throughout the project, it is recommended that you use style ??? in your code:

```javascript
// style A
function A() {
  return {
    style: 'A',
  };
}

// style B

function B()         {
  return             {
    style: 'B'
                     }
                     }

// style C
function C()
{
  return
  {
    style: 'C',
  };
}
```

- A
- B
- C


---

## Revision

What is the name of the JavaScript language feature that can cause problems in certain situations if we forget to put a `;`?

???

- Automatic semicolon insertion
- Scoping semicolon
- Automatic semicolon placement
- Returning object semicolon


---

## Quiz

### What will the following snippet output?


```javascript
function pi() {
  return
  {
    pi: 3.14
  }
}
console.log(pi())
```

 ???

- undefined
- [object Object]
- SyntaxError
- [object Object]


---

## Footnotes

[1: Lexical Grammar] JavaScript has a set of rules of how it needs to be written such that it is valid. This set of rules is called a [Lexical Grammar](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar). One consequence of these rules is that we have to be careful in some situations to not forget to put a `;`. The statements affected by ASI are: `var`, `do`-`while`, `continue`, `break`, `return`, `throw`.
