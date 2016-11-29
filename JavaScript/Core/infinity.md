# Infinity
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - infinity

links:

  - '[www.2ality.com](http://www.2ality.com/2012/02/nan-infinity.html){website}'

---
## Content

Dividing a number by zero typically return `Infinity` or `-Infinity`:
```
2/0  //= Infinity
-2/0 //= -Infinity
2/-0 //= -Infinity
Infinity/0 //= Infinity
```
With one edge-case:
```
0/0 //= NaN (Not a Number)
```

Attempting to increase the value of `Infinity` simply results in `Infinity`:
```
Infinity + Infinity; //= Infinity
Infinity * 10; //= Infinity
```
Attempting to cancel out `Infinity` by subtracting it from itself results in `NaN` (not a number):
```
Infinity - Infinity; //= NaN
```

---
## Revision

Complete the code snippet:
```javascript
-2/0 // = ???
Infinity/0 // = ???
0/0 // = ???
```
*-Infinity
*Infinity
*NaN
*0
*undefined
*null