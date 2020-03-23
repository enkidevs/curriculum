---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction

links:

  - '[What Is an Array?](http://www.bbc.co.uk/education/guides/z4tf9j6/revision/2){website}'

parent: what-is-a-data-structure

---

# The Array Data Structure

---
## Content

An **array** is a data structure organized as a linear collection of elements, for which an **index** (a numerical indicator of position) is used to access its content. The same information may appear in the array more than once but under a different index. This is how you could picture it:

![array](https://img.enkipro.com/fbd852d580a6913dfffe3c244fe0a0fb.png)

We can differentiate between arrays based on whether their size is declared up-front (*static*) or able to change at run-time (*dynamic*).

A good example is the one of a bookshelf. You start by placing the *first* book in the left side of the shelf, following with each book to the right of the last one, until there is no more space.

In this case, each book has its own *allocated space* and you can straight up *see the title and author* on the side of the book.

A *dynamic* bookshelf would resize itself as soon as there is no more room for another book, while a *static* one wouldn't.


Here's how you can construct an array in a few languages:

```java
// Java
int[] myArray = { 1, 2, 3 };
```
```cpp
// C++
int myArray[] = { 1, 2, 3 };
```
```py
# Python
from array import array
myArray = array('i', [1, 2, 3])
```
```js
// JavaScript
var myArray = [1, 2, 'enki'];
```

Or, you can declare empty arrays of size 3 using:

```java
// Java
int[] myArray = new int[3];
```
```c++
// C++
int myArray[3];
```
```js
// JavaScript
var myArray = new Array(3);
```

The advantage of an array is that you have immediate access to its elements. All you have to do is specify the index of the element you are looking for:
```js
// works for most languages
x = myArray[0];
```

Swap the order to assign a value to the cell:
```js
myArray[0] = x;
```

---
## Practice

To access an element in an array, you would use:

???

* an index
* promises
* values
* data structures

---
## Revision

An array that has its size declared up-front it's called

???

* static
* dynamic
* indexed
* associative



