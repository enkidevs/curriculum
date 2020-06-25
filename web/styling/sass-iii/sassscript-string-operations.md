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

  - '[Article on String Operations](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#string_operations){article}'


---

# SassScript String Operations

---
## Content

The `+` operation is used in *SassScript* for the concatenation of strings.

Take note of the quotation marks in these examples:
```css
p {
  font-family: "sans-" + serif;
  font-family: Times + " New Roman";
}
```
Compiles to:
```css
p {
  font-family: "sans-serif";
  font-family: Times New Roman;
}
```
When concatenating, if the first string has quote marks, the concatenated string has quote marks surrounding it. If not, then the string does not have quote marks around it.

Within a text string, *`#{} style interpolation`* can be used to place dynamic values into a string:
```css
p:before {
  content: "Dynamic value insertion:
            #{10 + 10}!";
}
```
Compiles to:
```css
p:before {
  content: "Dynamic value insertion: 20!";
 }
```

---
## Practice

Complete the code snippet to dynamically insert a value:

```css
p:before {
  content: "Here we go: ???{1 + 13}";
}
```


* `#`
* `=`
* `~`
* `[]`

---
## Revision

What do the two following CSS lines of code compile to? Please answer in the order of the question.
```css
h1 {
   string: Hey + "everyone!";
   content: "From " + Enki!;
}
```
??? ???

* `string: Hey everyone!;`
* `content: "From Enki!";`
* `string: "Hey everyone!";`
* `content: From Enki!;`
* `string: Hey "everyone!";`
* `content: "From "Enki!;`
