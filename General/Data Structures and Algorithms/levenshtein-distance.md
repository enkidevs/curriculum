# Levenshtein Distance
author: mihaiberq

levels:

  - basic

type: normal

category: must-know

---
## Content

The **Levenshtein distance**, or *edit distance*, is the amount by which two strings differ.

In other words, the distance represents the single character changes. Consider measuring the distance between `trace` and `face`:
```
trace → race
race → face 
```
This example requires a character deletion and a character substitution, therefore the *Levenshtein distance* is **2**.

The formula for calculating the distance is:
```
// if either of the strings
// is the empty string
d(i,j) = max(i,j)

// if the last character of
// both substrings match
// s1[i] == s2[j]
d(i,j) = min(d(i-1,j),
             d(i,j-1),
             d(i-1,j-1))

// in any other case
d(i,j) = min(d(i-1,j)+1,
             d(i,j-1)+1,
             d(i-1,j-1)+1)
```

Things will get clearer after you consider this table:
```
        0  1  2  3  4  5
       ""  T  R  A  C  E

  0 ""  0  1  2  3  4  5

  1 F   1  1  2  3  4  5

  2 A   2  2  2  2  3  4

  3 C   3  3  3  3  2  3

  4 E   4  4  4  4  3  2
```
Each cell in the table represents the edit distance between the two substrings of length i and j, respectively. 

Take *(2,3)* for example: *2* is the distance between **tra** and **fa**. The value in each cell is obtained using the formula above. 

The *Levensthein distance* between the two strings, *trace* and *face*, is located in the bottom-right corner : **2** .



---
## Practice

What is the distance between strings `string` and `int`?

???
*4
*5
*3
*2

---
## Revision

How many removals are needed to get from the string `test` to `east`?

???
*0
*1
*2
*3