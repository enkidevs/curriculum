# Stringing it all together!
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: must-know

---
## Content

Do you know how to manipulate Strings in ES6?

---
## Game Content

```
/* Make this 
code print 'Hello Mary Sue!'*/ 
var firstName = 'Mary';
var surname = 'Sue';
console.log(`Hello ???!`);
```
* `${firstName} ${surname}`
* `"+firstName+" "+surname+"`
* `#firstName + #surname`
---

```
/* What is needed
 to prevent the new line \n? */
var comment =???`Not a newline: \n`;
alert(comment);
```
* `String.raw`
* `Template.ignore`
* `$.`
---

```
/* Make the array 
['e', 'n', 'k', 'i'] */
var arr = [???'enki'];
alert(arr);
```
* `...`
* `String.spread`
* `$.`
---

```
/* Make the console print:
e
n
k
i
*/
"use strict"
for (let c ??? 'enki') {
  console.log(c);
}
```
* `of`
* `in`
* `=`
---
```
// Make this true
'thecowjumpedoverthemoon'.???('oo');
```
* `includes`
* `contains`
* `endsWith`
---

```
/* Make the alert 
'na na na na na '*/
alert('na '.???);
```
* `repeat(5)`
* `again(5)`
* `${5}`