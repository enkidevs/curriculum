---
author: rosielowther
type: normal
category: must-know
tags:
  - introduction
links:
  - >-
    [MDN
    Documentation](https://developer.mozilla.org/en/docs/Web/API/Console/log){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Outputting to Console

---

## Content

`console.*` methods display data to the console. For instance, `console.log` prints text or variables:

```js
console.log("Message");
// Message
```

```js
console.log("Username: " + username);
// Username: enkilondon
```

Other methods include:

- `console.warn("Warning")`
- `console.error("Error!")`
- `console.trace()` [1]

The three above are crucial for debugging your code! 

> 🤔 When might `console.warn` be more useful than `console.log`?

---

## Practice

Which of the following is the correct method for outputting information to the console? ???

- `console.log();`
- `console.write();`
- `console.print();`
- `console.println();`


---

## Revision

Log a message in the `console`:

```javascript
???.???("my message");
```

- `console`
- `log`
- `print`
- `system`
- `output`
- `show`
- `warn`
 
---

## Footnotes

[1: stack trace]
You can think of a stack trace as the "timeline" of your code. It can tell you the ordered steps your program has taken, including the data created along the way.

Think about it like this. You lost your keys and you're trying to find them. You create a list of all the places where you've been:

1. kitchen
2. living room
3. pub
4. ...

You start checking all those places to find your keys. With a stack trace, you do the same thing. The only difference is you're not looking for your keys; most of the time you're looking for an error in your code 😅
