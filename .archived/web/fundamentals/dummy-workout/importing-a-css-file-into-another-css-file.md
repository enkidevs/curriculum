---
author: SeanWalters

levels:

  - basic

  - medium

  - beginner

type: normal

category: pattern

tags:

  - ''

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/147500/is-it-possible-to-include-one-css-file-in-another)
    {website}

---
# Importing a CSS file into another CSS file

---
## Content

It is possible to import styles from another css stylesheet simply using the following code. 
```
@import url(basestylesheet.css);
```
A few points to keep in mind:
1. The @import rule must precede all other rules except for the @charset rule.
2. Additional @import statements require additional server requests.

If you want to avoid the additional HTTP requests, which can be a drawback, a solution would be to copy the contents from the first css file and paste it into your current css file.

---
## Revision

What's the drawback of using `@import` in CSS, and how can this be avoided? 
???

* Each time the `@import` rule is used it creates an HTTP request. Combine your CSS files using copy and paste.
* The `@import` rule is inefficient when compiling. Combine your CSS files using copy and paste.
* The `@import` rule slows compilation times considerably. Don't combine your CSS files.