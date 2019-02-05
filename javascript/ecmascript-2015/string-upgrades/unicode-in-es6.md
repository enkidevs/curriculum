---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-strings-and-unicode-in-depth){website}'
  - '[www.2ality.com](http://www.2ality.com/2013/09/javascript-unicode.html){website}'


---

# Unicode in ES6

---
## Content

JavaScript strings are represented using UTF-16 code units. Each code unit can be used to represent a code point in the `[U+0000, U+FFFF]` range. Code points beyond that range are represented by a surrogate pair.  

In ES6 the notation has been simplified:

```
\\ represents U+1F332 (EVERGREEN TREE)
"\u{1F332}"=="🌲"=="\uD83C\uDF32"
```
As with ES5, having multiple code units per code point means that `.length` is not reliable:
```
'🌲🌲🌲'.length // length is 6
```
However in ES6 the string iterator can be used to loop over code **points** rather than code **units**:
```
for (let codePoint of '🌲✈❤') {
  console.log(codePoint);
}
// '🌲'
// '✈'
// '❤'
```
Use `.codePointAt` to get the base-10 numeric representation of a code point at a given position in a string (indexed by code unit).

```
for (let codePoint of '🌲✈❤') {
  console.log(codePoint.codePointAt(0));
}
/*
127794 (EVERGREEN TREE)
9992 (AIRPLANE)
10084 (HEAVY BLACK HEART)
*/
```

---
## Practice

What method is used to get the base-10 numeric representation of a code point at a given position in a string?

```
for (let codePoint of '🌲🌲') {
  console.log(codePoint.???(0));
}
```

* `codePointAt`
* `codePoint`
* `codePointRep`
* `base10point`

---
## Revision

How are Javascript strings represented?

???


* UTF-16
* UTF-8
* UTF-32
* US-ASCII

 
