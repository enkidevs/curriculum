---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:
  - introduction
  - workout

links:

  - '[Article on List Functions](http://sass-lang.com/documentation/Sass/Script/Functions.html#list-functions){website}'


---

# Strings in SassScript

---
## Content

There are two types of strings in CSS and both of these are recognised in *SassScript*. The first is `"with quotations"`, and the second is `without quotations`.

If one type of string is used in a Sass document, that string type will be used in the resulting CSS.

*SassScript* has a number of string functions:
```css
// to remove quotations
unquote("Enki") => Enki
// returns the string length
str-length("Sass") => 4
// returns the string in upper case
to-upper-case("upper") => UPPER
```
Unlike in some languages, the first character in a string is number 1, not 0.
```css
str-insert("Eni", "k", 3) => "Enki"
str-insert("SassScript is ", "fun", 15)
=> "SassScript is fun"
```

---
## Practice

Pick the right index at which you should insert a character as to result in "enki" string:
```javascript
str-insert("eki", "n", ???)
```


* `2`
* `1`
* `3`
* `4`
* `0`

---
## Revision

Pick the right index at which you should insert a character as to result in "enki" string:
```javascript
str-insert("eki", "n", ???)
```


* `2`
* `1`
* `3`
* `4`
* `0`
