---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [.test()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/test){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Test()


---

## Content

The `test()` method is a special RegExp expression method.

It searches a string for a pattern, and returns `true` or `false`, depending on the result.

The following example searches a string for the letter "e":

```javascript
let regex = /e/;
regex.test(
"The quick brown fox jumps over the lazy dog"
);

// true
```

> 💡 You don't have to put the regex pattern in a variable first. The two lines above can be shortened to one.

```javascript
/e/.test(
"The quick brown fox jumps over the lazy dog"
);

// true
```


---

## Practice

The `test()` method takes a regular expression as an argument.

???

- False
- True


---

## Revision

The `test()` method takes a string as an argument.

???

- True
- False
