---
author: adamMontgomerie
type: normal
category: tip
tags:
  - loops
  - arrays
links:
  - >-
    [Copy an
    Array](http://www.javapractices.com/topic/TopicAction.do?Id=3){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Copying an Array


---

## Content

To copy the contents of an array, you can use the `Arrays.copyOf()` method. It can be found in the `java.util.Arrays` class, and the syntax is:

```java
import java.util.Arrays;

copyOf(String[] original, int newLength);
```

Notice how we've used the `String` type for our array. This is not required, the array can have any type. Make sure to change the type depending on your array.

Now, let's take a look at an example:

```java
import java.util.Arrays;

String[] sourceArray = {
  "a",
  "b",
  "c"
};

String[] newArray = Arrays.copyOf(
  sourceArray,
  3
);
// newArray = {
//   "a",
//   "b",
//   "c"
// };
```

If you specify a length that is bigger than the original array, all the extra elements will be padded with false (`null` or `0`).

If you don't want to use the `java.util.Arrays` class, there is another method. First, you must create a new array of the same length:

```java
String[] sourceArray = {
  "a",
  "b",
  "c"
};
String[] newArray = new String[
  sourceArray.length
];
```

Now, to copy the array, you can use the `System.arraycopy()` method like this:

```java
System.arraycopy(
  sourceArray, 
  0,
  newArray,
  0, 
  sourceArray.length);
```

The arguments you must pass are (in this order):

1. the array that you want copied
2. the index where to start copying from
3. the new array in which the data will be copied
4. the index where to start copying to
5. the number of elements to be copied


---

## Practice

Copy the `fruits` array using the `java.util.Arrays` class:

```java
import java.util.Arrays;

String[] fruits = {
  "melon",
  "banana",
  "cantaloupe"
};

String[] newFruits = ???.???(
  fruits,
  3
);
```

- Arrays
- copyOf
- arrays
- copyof
