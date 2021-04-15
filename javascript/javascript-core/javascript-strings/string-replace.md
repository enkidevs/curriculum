---
author: jordanfish
type: normal
category: caveats
tags:
  - strings
  - html
  - introduction
  - workout
links:
  - >-
    [15 Common JavaScript
    Gotchas](http://www.standardista.com/javascript/15-common-javascript-gotchas/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `String.replace`


---

## Content

Using `String.prototype.replace()`, you can create a new string that replaces certain parts based on a pattern.

```js
let aString = 'Enki is the best!';
let newString = aString.replace(
  'Enki',
  'Summer'
);
console.log(newString);
// "Summer is the best!"
```

This method will only replace the **first occurence**, when the pattern used is a string:

```js
let aString = 'A duplicate duplicate word.';
let newString = aString.replace(
  'duplicate',
  'wow'
);
console.log(newString);
// "A wow duplicate word."
```

The method is not limited to using strings as patterns, with RegEx[1] also being a possibility:

```js
let aString = 'An example string for us';
let newString = aString.replace(
  / /g, // this will match all the spaces in the string
  ''
);
console.log(newString);
// "Anexamplestringforus"
```

> When using regular expressions, you can replace more than the first occurence in the string. 


---

## Practice

Complete the following code snippet to replace **the first** `+` with `-`:

```javascript
let s = 'x + y + z = w';
s = s.???(
  '???',
  '???'
);
console.log(s); 
// "x - y + z = w"
```

- replace
- `+`
- `-`
- findAndReplace
- change
- =


---

## Revision

String.prototype.??? is used to replace one or more occurrences of a substring with another string.

- replace()
- map()
- change()
- delete()


---

## Footnotes

[1:RegEx]
RegEx is short for regular expression, and it represent a sequence of characters that define a search pattern. For example, this pattern `/ /g` will match with all the spaces in a string. For more information about RegEx check out [their documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions).
 
