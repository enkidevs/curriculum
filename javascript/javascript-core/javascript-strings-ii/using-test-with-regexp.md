---
author: fsites
type: normal
category: feature
links:
  - >-
    [Official
    Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/test){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using `.test()` With RegExp


---

## Content

The `.test()` method takes a string and checks it against a RegEx[1]. 

The returned value is boolean: 

- `true` if there is a match
- `false` if there is no match.

```javascript
let str = 'I learned a new tip with Enki';

let containsEnki = /Enki/i;
containsEnki.test(str); // true

let containsAtSchool = /At School/i;
containsAtSchool.test(str); // false
```


---

## Practice

What will the `test`s return?

```javascript
let str = 'Practicing my RegExp with Enki!';

let containsRegExp = /Regular Expressions/i;
containsRegExp.test(str);
// ???

let containsEnki = /Enki/i;
containsEnki.test(str);
// ???
```

- false
- true


---

## Revision

Matching a string with a RegEx is done with: 

???

- `regex.test(string)`
- `regex.match(string)`
- `regex.check(string)`


---

## Footnotes

[1:RegEx]
RegEx is short for regular expression, and it represent a sequence of characters that define a search pattern. For example, this pattern `/ /g` will match with all the spaces in a string. For more information about RegEx check out [their documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions).
 
