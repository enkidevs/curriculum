---
author: nicoburns
levels:
  - basic
  - advanced
  - medium
type: normal
category: feature
tags:
  - es6
notes: ''
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Computed property names in object literals


---

## Content

When using dynamically computed property names, we have traditionally been forced to use the more awkward imperative syntax:
```javascript
let color = "pink";
let pig = new Object();
pig.color = color;
pig[color + "ness"]  = 10;
```

Since ES6, object literal syntax has been extended and we can now write direclty:

```javascript
let color = "pink";
let pig = {
    color: color,
    [color + "ness"]: 10
}
```

---

## Practice

```javascript
let x = 3.14;
let enki = new Object();
enki.x = x;
enki[x + "y"] = 2;
```

Convert the code snippet above using the extended **ES6** object literal syntax:

```javascript
let x = 3.14;
let enki  = {
  x: ???,
  [x + ???]: 2
}
```

- x
- "y"
- y
- "x"
- 3.14
- new
- Object
- {}


---

## Revision

```javascript
let x = 3.14;
let enki = new Object();
enki.x = x;
ekni[x + "y"] = 2;
```

Convert the code snippet above using the extended **ES6** object literal syntax:

```javascript
let x = 3.14;
let enki  = {
  x: ???,
  [x + ???]: 2
}
```

- x
- "y"
- y
- "x"
- 3.14
- new
- Object
- {}
 
