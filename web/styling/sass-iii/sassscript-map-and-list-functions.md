---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:
  - workout
  - deep

links:

  - '[Article on List Functions](http://sass-lang.com/documentation/Sass/Script/Functions.html#list-functions){article}'


---

# SassScript Map and List Functions

---
## Content

In *SassScript* neither maps or lists support any special operations, they're manipulated by their respective map and list functions.

All list functions work for maps too, maps are seen as a list of pairs.

*Remember*, the first item is index 1 in SassScript, not 0. A few examples of the functions for both maps and lists:
```css
// returns the length of a list or map
length(6px 8px 10px) => 3
length(loc1: val1, loc2: val2) => 2

// returns nth item of a list or map
nth((6px, 8px, 10px), 3) => 10px
nth((loc1: val1, loc2: val2), 2)
=> loc2: val2

// returns multiple lists as a single
// multidimensional list
zip(a b c, 1 2 3, x y z)
=> a 1 x, b 2 y, c 3 z
```

---
## Revision

What's the first item index in **SassScript**?
???

* `1`
* `0`
