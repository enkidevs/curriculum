---
author: catalin
type: normal
category: tip
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/1484506/random-color-generator-in-javascript){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
---

# Easily Generate a Random `HEX` Color


---

## Content

You can easily generate a string containing a random `HEX` color :

```javascript
'#' + Math.random().toString(16)
                   .substr(-6);
```

Hex colors start with the `"#"` keyword, followed by a sequence of 6 characters ranging from **0** to **9**, **A** to **F**. 

`Math.random().toString(16)` will generate a random number between 0 and 1 converted to hexadecimal. Calling `substr(-6)` on this will return the last 6 characters of the number.


---

## Practice

Create a random `hex` colour:

```javascript
'???' + Math.???()
            .???(16)
            .substr(-6);
```

- `#`
- `random`
- `toString`
- `*`
- `+`
- `generate`
- `hex`
- `toHex`
- `stringHex`
- `new`


---

## Revision

Create a random `hex` color:

```javascript
'#' + ???.???()
         .toString(16)
         .substr(-6);
```

- `Math`
- `random`
- `hex`
- `Number`
- `int`
- `Hex`
 
