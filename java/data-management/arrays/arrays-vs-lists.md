---
author: Nick Daminov

levels:

  - beginner

type: normal

category: must-know


links:

  - '[More on ArrayLists](https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html){website}'
  - '[More on Arrays](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/arrays.html){website}'


---

# Arrays vs Lists

---
## Content

*Arrays* and *ArrayLists* are similar in terms that they both store their elements linearly. The difference thought comes in the implementation concept. While arrays are fixed in size array lists can be increased and decreased in size easily. Both of these data structures have their advantages over one another.

The declaration of these structures is:
```
//Fixed size array declaration, type int
int[] array = new int[3];

//ArrayList with starting length of 3,
//type Integer
ArrayList<Integer> arrList =
                 new ArrayList<Integer>(3);
```

Both `Arrays` and `ArrayLists` have numerous useful inbuilt methods such as sorting, copying, adding and deleting elements. Since both of these structures both store elements linearly, *Java API* provides us with methods which convert one structure into another one, it is important to remember though that `ArrayLists` do not reference primitive types such as `int`.

As `Arrays` are a simpler structure of constant size and it only holds elements and nothing else, they occupy less memory and can be the deciding factor when working with limited resources.

---
## Practice

Why are arrays more memory efficient?

???

How do you declare an `ArrayList` of type `int`?

???


* They don't store any additional information such as next element pointer
* You can't declare an `ArrayList` of primitive type like `int`
* They are of a fixed length
* Elements in array can only be accessed by index
* ArrayList<int> arrList = new ArrayList<>();

---
## Revision

Which data structure is of a fixed length?

???


* Array
* ArrayList

