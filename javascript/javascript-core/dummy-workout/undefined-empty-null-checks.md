---
author: pawel
levels:
  - basic
  - beginner
type: normal
category: pattern
notes: One more of shorthand's which I hope are not too basic for enkifying.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Undefined / Empty / Null Checks


---

## Content

It is common to check if a variable is `null` or `undefined` and provide a default value when necessary.

Instead of: 

    var msg;
    if (name !== null && 
        name !== undefined &&
        name !== '') {
      msg = 'Hello '+ name;
    } else {
      msg = 'Hello friend';
    }

A shorter alternative is:

    msg = 'Hello ' + (name || 'friend');


---

## Revision

The following code checks for ??? .

```javascript
msg = 'Hello ' + (name || 'friend');
```

- All 3 of them
- Null
- undefined
- Empty string
 
