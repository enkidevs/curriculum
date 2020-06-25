---
author: tommarshall

levels:

  - basic

  - medium

type: normal

category: best practice

aspects:
  - introduction

links:

  - '[Sass Comments](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#comments){website}'


---

# Sass Supported Comments

---
## Content

There are two ways to comment out code in Sass. The first is a single-line comment:
```css
// a double forward slash is used for
// commenting out single lines of code
```

The second is a multiline comment:
```css
/*
Everything in between the multiline comment
parentheses is commented out. Multiline
comments can be used to comment out multiple
lines of code such as Sass declarations.
*/
```

Any single-line comments are removed when CSS code is generated from Sass code, all multiline comments will be preserved as they use the CSS comment syntax.

---
## Practice

Which of the following comments would be preserved when CSS code is generated from the Sass code?

???


* `/* Option A */`
* `// Option B`
* `<!-- Option C -->`
* `# Option D`


---
## Revision

Which type of comment is preserved when CSS code is generated from Sass code?

???

* Multi-line comments
* Single-line commments
* All comments
* No comments
