---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: must-know

---

# Stringing it all together!

---
## Content

Do you know how to manipulate Strings in ES6?

---
## Game Content

```javascript
/* Make this
code print 'Hello Mary Sue!' */
var firstName = 'Mary';
var surname = 'Sue';
console.log(`Hello ???!`);
```

* `${firstName} ${surname}`
* `"+firstName+" "+surname+"`
* `#firstName + #surname`

%exp
There are two ways of printing a variable's value. The first one is to wrap the variable in a string. The second one, the one used in this example, is called **expression interpolation**.
%

---

```javascript
/* What is needed
 to prevent the new line \n? */
var comment =???`Not a newline: \n`;
alert(comment);
```

* String.raw
* Template.ignore
* $.

%exp
The raw string will include any escaped characters and backslashes that are present in the string.
%

---

```javascript
/* Make the array
['e', 'n', 'k', 'i'] */
var arr = [???'enki'];
alert(arr);
```

* ...
* String.spread
* $.

%exp
`...` is called spread operator in JavaScript. It is for use on **iterable** data types.

As the name implies what it actually does is break any **iterable** data types into its pieces.  
%

---

```javascript
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

* of
* in
* =

%exp
The `for ... of` statement creates a loop iterating over iterable objects.

It creates a custom iteration hook with statements to be executed on each step.
%

---

```javascript
// Make this true
'thecowjumpedoverthemoon'.???('oo');
```

* includes
* contains
* endsWith

%exp
Using `includes` you can test if a substring is contained by a larger string or text.
%

---

```javascript
/* Make the alert
'na na na na na '*/
alert('na '.???);
```

* repeat(5)
* again(5)
* ${5}

%exp
The `repeat()` method creates and returns a new string which contains the specified number of copies of the string it was applied on.  
%
