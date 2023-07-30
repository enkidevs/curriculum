---
author: pawel
type: normal
category: pattern
tags:
  - short-circuiting
links:
  - >-
    [MDN - Nullish Coalescing
    Operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Nullish_coalescing_operator){documentation}
  - >-
    [MDN -
    Falsy](https://developer.mozilla.org/en-US/docs/Glossary/Falsy){documentation}
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

# Setting Default Values With "Short Circuiting"


---

## Content

"Short circuiting" returns the value of the second operand based on the value of the first.

Instead of setting default values as below:

```javascript
function title(t) {
 if (!t) {
   t = "Untitled";
 }
}
```

We can use:

```javascript
function title(t) {
  t = t || "Untitled";
}
```

The above will return `"Untitled"` for `t` if the provided value for `t` is falsy

Sometimes this isn't desired. If an empty title is allowed, we would (incorrectly) get `"Untitled"` instead (because an empty string `''` is falsy).

A better approach would be to use default parameters which use the default value only if the provided one is `undefined`.

```javascript
function title(t = "Untitled") {
  
}
```

If we wanted additional safety against both `undefined` and `null` (but allow all other values), we'd use the nullish coalescing operator `??`:

```javascript
function title(t) {
  t = t ?? "Untitled";
}
```


---

## Practice

Complete both functions:

1. When `name` is any falsy value, `getPlanet` should return `'Earth'`.

2. When `name` is `undefined` or `null`, `getGalaxy` should return `'Milky Way'`. 

```javascript
function getPlanet(name){
  return name ??? 'Earth';
}

function getGalaxy(name){
  return name ??? 'Milky Way';
}
```

- ||
- ??
- &&
- ==
---

## Revision

Complete the following code to return a *valid* String as `name` or a default value if `name` is `undefined`:

```javascript
function getDefault(name ??? 'John Doe'){
  return name;
}
```

- =
- ||
- &&
- ==


---

## Quiz

### Fallback when null or undefined


Complete the following code to return a *valid* String as `name` or a default value if `name` is `undefined` or `null`:

```javascript
function getDefault(name){
  return name ??? 'John Doe';
}
```

- ??
- ||
- &&
- ==
 
