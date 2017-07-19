# Arrays vs Lists
author: nickdaminov

levels:

  - beginner

type: normal

category: must-know

links:

 - '[More on ArrayLists](https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html)'
 - '[More on Arrays](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/arrays.html)'

---
## Content

*Arrays* and *ArrayLists* are similar in terms that they both store their elements linearly. The difference thought comes in the implementation concept. While arrays are fixed in size linked lists can be increased and decreased in size easily. Both of these data structures have their advantages over one another.

The declaration of these structures is:
```
//Fixed size array declaration, type int
int[] array = new int[3];

//ArrayList with starting length of 4
ArrayList<Integer> arrList =
                 new ArrayList<Integer>(4);
```

---
## Practice

Why are arrays more memory efficient?

???

* They don't store any additional information such as next element pointer
* They are of a fixed length
* Elements in array can only be accessed by index
---
## Revision

Which data structure is of a fixed length?

???

* Array
* ArrayList
