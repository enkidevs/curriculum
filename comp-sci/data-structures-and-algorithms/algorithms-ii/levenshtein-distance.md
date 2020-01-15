---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

aspects:

  - deep

  - obscura

links:

  - '[Optimizing Levensthein distance computation](http://stackoverflow.com/questions/3183149/most-efficient-way-to-calculate-levenshtein-distance){website}'

parent: exponentiation-by-squaring

---

# Levenshtein Distance

---
## Content

The **Levenshtein distance**, or *edit distance*, is the amount by which two strings differ.

In other words, the distance represents the single character changes. There are three possible actions that can be applied on a character: **deletion**, **addition** or **modification**. Consider measuring the distance between `trace` and `face`:
```
trace → race
race → face
```
This example requires a character deletion and a character substitution, therefore the *Levenshtein distance* is **2**.

For two strings `s1` and `s2`, the algorithm begins by comparing the substrings of length `i=0` and `j=0` of `s1` and `s2`, respectively. The actual formula for calculating the distance is:
```
// if either of the strings
// is empty
levd(i,j) = max(i,j)

// if the last character of
// both substrings match
// s1[i] == s2[j]
levd(i,j) = min(levd(i-1,j),
             levd(i,j-1),
             levd(i-1,j-1))

// in any other case
levd(i,j) = min(levd(i-1,j)+1,
             levd(i,j-1)+1,
             levd(i-1,j-1)+1)
```
The final distance is obtained using previously calculated distances, one step at a time. Things will get clearer after you consider this table:

![levd](https://img.enkipro.com/1441e2543547c9de9fd868220fd7c93e.png)

Each cell in the table represents the edit distance between the two substrings of length i and j, respectively.

Take *(3,2)* for example: the distance between **tra** and **fa** is *2*. The value in each cell is determined using the formula above.

The *Levensthein distance* between the two strings, *trace* and *face*, is located in the bottom-right corner : **2** .

---
## Practice

What is the distance between strings `string` and `int`?

???

* 4
* 5
* 3
* 2

---
## Revision

How many removals are needed to get from the string `test` to `east`?

???

* 0
* 1
* 2
* 3


