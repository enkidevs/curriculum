---
author: Kirill
levels:
  - basic
  - advanced
  - medium
type: normal
category: how-to
notes: 'Check how this works with bruno '
links:
  - >-
    [Checking whether a value is an integer in
    JavaScript](http://www.2ality.com/2014/05/is-integer.html){blog}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Check if an Argument Is a Number


---

## Content

```js
function isNumber(n){
  var float  = !isNaN(parseFloat(n));
  var finite = isFinite(n);
  return float && finite;
}
```


---

## Practice

Complete the code to check if the argument is a number:

```javascript
function isNumber(x) {
   var float = !isNan(???(x));
   var finite = ???(x);
   return float ??? ???;
}
```

- `parseFloat`
- `isFinite`
- `&&`
- `finite`
- `isInfinte`
- `++`
- `&`
- `+`
- `parse`
- `'null'`
- `typeof`
- `var`


---

## Revision

Complete the code in order to check if the input is a number or not:

```javascript
function isNumber(n){
  var float  = ! ???(???(n));
  var finite = ???(n);
  return float && finite;
}
```

- `isNaN`
- `parseFloat`
- `isFinite`
- `isInfinite`
- `typeof`
- `isNum`
- `isValue`
 
