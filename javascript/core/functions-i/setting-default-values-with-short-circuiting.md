---
author: pawel

type: normal

category: pattern

tags:
  - short-circuiting


aspects:
  - introduction
  - workout

links:
  - '[MDN - Nullish Coalescing Operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Nullish_coalescing_operator){documentation}'
  - '[MDN - Falsy](https://developer.mozilla.org/en-US/docs/Glossary/Falsy){documentation}'

---

# Setting default values with `short circuiting`

---
## Content

`Short circuiting` returns the value of the second operand based on the value of the first.

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

A more correct approach could be to use default parameters to short-circuit the default value only if the provided one is `undefined`.

```javascript
function title(t = "Untitled") {
  
}
```

If we wanted additional safety against both `undefined` and `null` (but allow all other values), we could use the nullish coalescing operator:

```javascript
function title(t) {
  t = t ?? "Untitled";
}
```

---
## Practice

`Short circuit` the following code:
```javascript
function shortCir(name){
  return ??? ??? 'John Doe';
}
```

* name
* ||
* &&
* ==

---
## Revision

Complete the following code to return a *valid* String as name or a default value:

```javascript
function shortCir(name){
  return ??? ??? 'John Doe';
}
```

* name
* ||
* &&
* ==
 
