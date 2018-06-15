---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know


links:

  - '[What is an array?](http://www.bbc.co.uk/education/guides/z4tf9j6/revision/2){website}'

parent: what-is-a-data-structure

---

# The Array Data Structure

---
## Content

An **array** is a data structure organized as a collection of elements, for which **indexes** are used to access its content. The same information may appear in the array more than once, but under different indexes. This is how you could picture it:

![array](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M75%20144h550v100H75z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2296.4951172%22%20y%3D%22211%22%3E20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22212.497559%22%20y%3D%22211%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22315.497559%22%20y%3D%22211%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22416.497559%22%20y%3D%22211%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M175%20146v97m102-97v97m102-97v97m102-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2280%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22528.496094%22%20y%3D%22219%22%3E%E2%80%A6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M125%2095.5v41m-3-10.8l3%2010.8%203-10.8M227%2096v41m-3-10.8l3%2010.8%203-10.8M329%2094v41m-3-10.8l3%2010.8%203-10.8M431%2096v41m-3-10.8l3%2010.8%203-10.8%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22115.15277%22%20y%3D%2280%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22219.15277%22%20y%3D%2280%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22321.15277%22%20y%3D%2280%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22423.15277%22%20y%3D%2280%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

We can differentiate between arrays based on whether their size is declared up-front (*static*) or able to change at run-time (*dynamic*).

A good example is the one of a bookshelf. You start by placing the *first* book in the left side of the shelf, following with each book to the right of the last one, until there is no more space.

In this case, each book has its own *allocated space* and you can straight up *see the title and author* on the side of the book.

A *dynamic* bookshelf would resize itself as soon as there is no more room for another book, while a *static* one wouldn't.


You can declare an array using:
```
//constructed arrays of size 3
//Java
int[] myArray = {1,2,3};
//C++
int myArray[] = {1,2,3};
//Python
from array import array
myArray = array('i', [1,2,3])
//JavaScript
var myArray = [1,2,'enki'];
```
Or empty arrays of size 3:
```
//Java
int[] myArray = new int[3];
//C++
int myArray[3];
//JavaScript
var myArray = new Array(3);

```
The advantage of an array is that you have immediate access to its elements. All you have to do is specify the index of the element you are looking for:
```
//works for most languages
x = myArray[0];
```
Swap the order to assign a value to the cell:
```
myArray[0] = x;
```

---
## Practice

To access an element in an array, you would use:

???

* indexes
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

 
