---
author: kld14
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Multidimensional array declaration


---

## Content

The following code declares a 2D array - an array of 10 
arrays each of length 7.

```java
int array[][] = new int[10][7];
```

The following code declares a 3D array - an array of 10 
Arrays each containing 7 arrays. The 7 arrays are of length 3.

```java
int array[][][] = new int[10][7][3];
```

In a similar manner, arrays of higher dimensions can be declared (although the Java VM specification limits this number to 255). The leftmost pair of square brackets indicates the outermost array. For example:

```java
int array[][] = new int[10][7];
for (int i = 0;i < array.length;i++) {
  for (int j = 0;j < array[i].length;j++) {
    array[i][j] = i * j;
  }
}
```


---

## Practice

Declare an array of 8 arrays, each of length 4:

```java
int array[][]=new int[???][???]
```

- `8` 
- `4` 
- `2` 
- `[]` 
- `null`


---

## Revision

Java VM specification sets the maximum number of dimensions an array can have to:

???

- `255` 
- `256` 
- `254` 
- `101` 
- `27` 
- `100`
