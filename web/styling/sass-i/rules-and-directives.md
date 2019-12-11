---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

aspects:
  - introduction
  - workout

links:

  - '[Documentation on Sass](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#_5){documentation}'


---

# @-Rules and Directives

---
## Content

On top of supporting all CSS3 @-rules, Sass has it's own specific @-rules, known as *`directives`*.

`@import` is extended by Sass to allow SCSS and Sass files to be imported. All imported files are merged together into one CSS file.

`@import` takes a filename to import, it's default is to look for a *.sass* file to import.
```css
// both import the same file
@import "file.sass";       
@import "file";
```
`@debug` prints the value of a *SassScript* expression to the output stream. It's used for debugging Sass files which include complicated SassScript code.
```css
@debug 6px + 12px;
```
This would output:
```css
Line 1 DEBUG: 18px
```

---
## Practice

Complete the code snippet so that it returns the below output:

```css
??? 28px + ???px;
/* Output */
Line 1 DEBUG: 42px
```

* `@debug`
* `14`
* `@run`
* `@compile`
* `42`
* `18`

---
## Revision

Which of the following lines of SassScript code *wouldn't* produce the following output?
```css
Line 1 DEBUG: 80%
```
???

* `@debug percentage(200px / 120px);`
* `@debug abs(80);`
* `@debug round(80.42);`
