---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


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

![levd](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20742%20274%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M60%2057h660v200H60z%22%2F%3E%3Cpath%20d%3D%22M170%2017v240M280%2017v240M390%2017v240M500%2017v240M20%2097h700M20%20138h700M20%20178h700M20%20217h700%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2221.4970703%22%20y%3D%2294%22%3E%E2%80%9C%E2%80%9D%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2230.4985352%22%20y%3D%22130%22%3EF%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2230.4985352%22%20y%3D%22169%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2230.4985352%22%20y%3D%22209%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2230.4985352%22%20y%3D%22248%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22215.498535%22%20y%3D%2250%22%3ET%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2295.4970703%22%20y%3D%2256%22%3E%E2%80%9C%E2%80%9D%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22325.498535%22%20y%3D%2250%22%3ER%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22434.498535%22%20y%3D%2249%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22545.498535%22%20y%3D%2249%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22657.498535%22%20y%3D%2249%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22106.498535%22%20y%3D%2290%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22106.498535%22%20y%3D%22131%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22106.498535%22%20y%3D%22210%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22106.498535%22%20y%3D%22249%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22106.498535%22%20y%3D%22171%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22217.498535%22%20y%3D%22131%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22326.498535%22%20y%3D%22171%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22326.498535%22%20y%3D%22131%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22326.498535%22%20y%3D%2290%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22217.498535%22%20y%3D%2290%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22217.498535%22%20y%3D%22171%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22217.498535%22%20y%3D%22210%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22217.498535%22%20y%3D%22249%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22326.498535%22%20y%3D%22210%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22326.498535%22%20y%3D%22249%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22437.498535%22%20y%3D%22210%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22546.498535%22%20y%3D%22210%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22546.498535%22%20y%3D%22171%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22546.498535%22%20y%3D%22131%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22546.498535%22%20y%3D%2290%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22657.498535%22%20y%3D%2290%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22657.498535%22%20y%3D%22131%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22657.498535%22%20y%3D%22171%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22656.498535%22%20y%3D%22210%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22657.498535%22%20y%3D%22249%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22437.498535%22%20y%3D%2290%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22437.498535%22%20y%3D%22131%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22437.498535%22%20y%3D%22171%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22437.498535%22%20y%3D%22249%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22546.498535%22%20y%3D%22249%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M612%20257V17m108%2040V17M60%20257H19M59.012498%2057H19m41%200V16%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

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

 
