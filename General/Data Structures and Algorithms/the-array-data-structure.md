# the-array-data-structure
author: mihaiberq

levels:
 - beginner

type: undefined

category: must-know

---
## Content

*An **array** is a data structure organized like a collection of elements, for which **indexes** are used to access its content. The same information may appear in the array more than once, but under different indexes.*

We can differentiate between *arrays *based on whether their size is declared up-front (**static**) or able to change at run-time (**dynamic**).

A good example is the one of a bookshelf. You start by placing the *first* book in the left side of the shelf, following with each book to the right of the last one, until there is no more space.

In this case, each book has its own *allocated space* and you can straight up *see the title and author* on the side of the book. 

A *dynamic* bookshelf would resize itself as soon as there is no more room for another book, while a *static* one wouldn't.


You can declare an array using:
```
//constructed arrays of size 3
//java
int[] myArray = {1,2,3};
//c++
int myArray[] = {1,2,3};
//python
myArray = [1,3,'enki'] 
//javascript
var myArray = [1,2,'enki'];
```
Or empty arrays of size 3:
```
//java
int[] myArray = new int[3];
//c++
int myArray[3];
//python
myArray = [];
//javascript
var myArray = [];

```

The advantage of an array is that you have immediate access to its elements. All you have to do is specify the index of the element you are looking for:
```
x = myArray[0];
//works for most languages
```
The same principle applies for appending a value to a cell:
```
myArray[0] = x;
```
---
## Revision

Choose the valid way to access an array's element:

`???`
*`myArray[1]`
*`myArray.get(1)`
*`myArray.1`
*`myArray{1}`