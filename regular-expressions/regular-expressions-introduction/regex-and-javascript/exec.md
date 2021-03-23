---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [.exec()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/exec){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Exec()


---

## Content

The `exec()` method is another special RegExp expression method.

It searches a string for a specified pattern, and returns the found text as an object.

The object returned is an array containing the matched text if it finds a match.

If no match is found, it returns an empty (null) object.

The following example searches a string for the character "e":

```javascript
const letter = /e/.exec("The dog barked.");

console.log(letter);
// ["e"]

console.log(letter[0]);
// e

console.log(letter.index);
// 2

console.log(letter.input);
// The dog barked.
```

As you can see, we can perform operations on our object to return the index position, or original text input.

- letter.index - returns the (zero-indexed) index of the match in the string
- letter.input - returns the string that was used in the search criteria


---

## Practice

Complete the following code to log `true`:

```javascript
const match = /dog/.exec("I want a hot dog.");

console.log(match[0] === '???')
```

- dog
- 8
- I want a hot dog.
- true


---

## Revision

Complete the following code to log `true`:

```javascript
const match = /dog/.exec("My dog ate it.");

console.log(match.index === ???)
```

- 3
- dog
- My dog ate it.
- false
