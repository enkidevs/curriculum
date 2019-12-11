---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

aspects:
  - workout
  - deep

links:

  - '[Article on Functions](http://sass-lang.com/documentation/Sass/Script/Functions.html){article}'


---

# SassScript Number Functions

---
## Content

*SassScript* has a number of implemented number functions which can be used for the manipulation and creation of numeric values.

These include:
```css
// turning a number into a percentage
percentage(0.74) => 74%
percentage(100px / 80px) => 125%

// returning a numbers absolute value
abs(12px) => 12px
abs(-4px) => 4px

// rounding a number
round(6.9px) => 7px
round(9.2px) => 9px

// returns a random number between 0 and 1
random => 0 <= num < 1

// returns a random number between 1 and
// the limit
random(3) => 1 <= num <= 3

```

---
## Practice

What are the outputs to the following Sass code:
```css
percentage(100px / 50px); /* ??? */
abs(-2px); /* ??? */
```


* `200%`
* `2px`
* `2%`
* `-2px`
* `0.2px`
* `20%`

---
## Revision

What do the following number functions return? Answer in order of the question.
```css
percentage(120px / 80px);
abs(-1px);
random(2);
```
??? ??? ???

* 150%
* 1px
* random value : `1 <= x <= 2`
* 120%
* 1.2%
* -1px
* 0px
* random value : `0 <= x <= 2`
* random value : `x < 2`
