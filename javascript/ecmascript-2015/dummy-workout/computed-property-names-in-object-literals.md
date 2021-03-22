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

    var color = "pink";
    var pig = new Object();
    pig.color = color;
    pig[color + "ness"]  = 10;

Since ES6, object literal syntax has been extended and we can now write direclty:

    var color = "pink";
    var pig = {
        color: color,
        [color + "ness"]: 10
    }


---

## Practice

```javascript
var x = 3.14;
var enki = new Object();
enki.x = x;
enki[x + "y"] = 2;
```

Convert the code snippet above using the extended **ES6** object literal syntax:

```javascript
var x = 3.14;
var enki  = {
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
var x = 3.14;
var enki = new Object();
enki.x = x;
ekni[x + "y"] = 2;
```

Convert the code snippet above using the extended **ES6** object literal syntax:

```javascript
var x = 3.14;
var enki  = {
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
 
