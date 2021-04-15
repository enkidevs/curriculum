---
author: emmab
tags:
  - introduction
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

# Search() & Replace()


---

## Content

As we've already discovered in the Practical Application workouts, Regex can be used to perform any **text search** and **text replace** operations.

Let's explore how we can use JavaScript's `search()` and `replace()` methods with regex!

The `search()` method can take a regular expression as an argument. It will return the position (or index) of the **start of the match**.

```javascript
let string = "learning about JS and regex";
string.search(/regex/);

// 22
```

> 💡 Remember that JavaScript is a zero-indexed language, so all indexes start at 0, not 1.

The `replace()` method replaces a specified value with another value in a string.

```javascript
let string = "Visit Google!";
string.replace(/google/i, "Enki");

// Visit Enki!
```

> 💡 Remember that the `i` modifier can be used to make a case-insensitive search or replacement.

Using regex patterns instead of simply using strings with the `search()` and `replace()` methods is more **powerful**.

This is because regex patterns can allow for complex patterns and case insensitivity.


---

## Practice

Complete the following:

```javascript
let string = "which position";
string.search(/o/i);

// ???
```

- 7
- 8
- 6
- 7, 12


---

## Revision

Complete the following:

```javascript
let string = "Learning about Python and Regex!";
string.replace(/python/i, "JavaScript");

// ???
```

- Learning about JavaScript and Regex!
- Learning about Javascript!
- Learning about Regex and Javascript!
- Learning about python and Regex!
