# The Array Data Structure
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
## Content

An **array** is a data structure organized as a collection of elements, for which **indexes** are used to access its content. The same information may appear in the array more than once, but under different indexes. This is how you should picture it:

![thearrayds](%3Csvg%20height%3D%22auto%22%20viewBox%3D%220%200%20634%20123%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%3E%3Ctitle%3EGroup%202%3C%2Ftitle%3E%3Cdefs%3E%3Cpath%20id%3D%22a%22%20d%3D%22M0%2071h500v60H0z%22%2F%3E%3Cmask%20id%3D%22b%22%20x%3D%220%22%20y%3D%220%22%20width%3D%22500%22%20height%3D%2260%22%20fill%3D%22%23fff%22%3E%3Cuse%20xlink%3Ahref%3D%22%23a%22%2F%3E%3C%2Fmask%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cg%20transform%3D%22translate(134%20-8)%22%3E%3Cuse%20stroke%3D%22currentColor%22%20mask%3D%22url(%23b)%22%20stroke-width%3D%224%22%20fill%3D%22%23FFF%22%20xlink%3Ahref%3D%22%23a%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2226.262%22%20y%3D%22113%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22103.262%22%20y%3D%22114%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22168.523%22%20y%3D%22114%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22334.262%22%20y%3D%22114%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M75%2072v58M152%2072v58M229%2072v58M306%2072v58M383%2072v58%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2260%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22424.393%22%20y%3D%22112%22%3E%E2%80%A6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M37.5%2035.5v31M34.5%2055.7l3%2010.8%203-10.8M114%2034v31M111%2054.2l3%2010.8%203-10.8M191%2034v31M188%2054.2l3%2010.8%203-10.8M267.5%2034v31M264.5%2054.2l3%2010.8%203-10.8M345%2034v31M342%2054.2l3%2010.8%203-10.8%22%20stroke%3D%22currentColor%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2228%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2229.783%22%20y%3D%2229%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2228%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22106.783%22%20y%3D%2229%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2228%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22183.783%22%20y%3D%2229%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2228%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22260.783%22%20y%3D%2229%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2228%22%20font-style%3D%22italic%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.783%22%20y%3D%2229%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2280%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-13.333%22%20fill%3D%22currentColor%22%20transform%3D%22translate(-3%20-8)%22%3E%3Ctspan%20x%3D%22.488%22%20y%3D%22127%22%3EA%20%3D%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

We can differentiate between arrays based on whether their size is declared up-front (*static*) or able to change at run-time (*dynamic*).

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
//works for most languages
x = myArray[0];
```
Swap the order to append a value to the cell:
```
myArray[0] = x;
```

---
## Practice

In most languages, to retrieve the first element of an array, you would write:
```
???
```
* `myArray[0]`
* `myArray.get(0)`
* `myArray.0`
* `myArray(0)`

---
## Revision

Choose the valid way to access an array's element:

`???`
*`myArray[1]`
*`myArray.get(1)`
*`myArray.1`
*`myArray{1}`
