# Setting default values with `short circuiting`
author: pawel

levels:

  - basic

  - beginner

type: normal

category: pattern

standard:
  js.write-expressions: 10

tags:

  - short-circuiting

links:

  - >-
    [javascriptissexy.com](http://javascriptissexy.com/12-simple-yet-powerful-javascript-tips/){website}

---
## Content

`Short circuiting` returns the value of the second operand based on the value of the first.

Instead of setting default values as below:

```javascript
function document(theTitle) {
 if (!theTitle) {
   theTitle = "Untitled Doc";
 }
}
```
We can use:

```javascript
function documentTitle(theTitle) {
  theTitle = theTitle || "Untitled Doc";
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
*name
*||
*&&
*==

---
## Revision

Complete the following code to return a *valid* String as name or a default value:

```javascript
function shortCir(name){
  return ??? ??? 'John Doe';
}
```
*name
*||
*&&
*==
