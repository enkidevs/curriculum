---
author: Parvin

levels:

  - basic

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout

links:

  - '[Sass CSS Importer Plugin](https://github.com/chriseppstein/sass-css-importer/blob/master/README.markdown){website}'


---

# Importer

---
## Content

CSS has an import option that lets you split your CSS into smaller, more maintainable portions.

The only drawback is that each time you use `@import` in CSS it creates another HTTP request. Sass builds on top of the current CSS `@import` but instead of requiring an HTTP request, Sass will take the file that you want to import and combine it with the file you're importing into so you can serve a single CSS file to the web browser.

For example:

You have a couple of Sass files, `_reset.scss` and `base.scss`. We want to import `_reset.scss` into `base.scss`.

```css
// _reset.scss
html,
body,
ul,
ol {
  margin: 0;
  padding: 0;
}

// base.scss
@import 'reset';
body {
  font: 100% Helvetica, sans-serif;
  background-color: #efefef;
}  
```
Please note that the .css extension triggers special behavior in Sass so you cannot import a file with a CSS extension. To work around this, you must use a special prefix on the import string and omit the extension.

---
## Revision

Each time you use *@import* in CSS it ???.

When using *@import* in Sass the file you're importing is taken and ???.


* creates a new HTTP request.
* combined with the file you're importing into.
* creates a new instance of the file.
* creates a new copy of the file.
* combined with the file you're importing into, in a new file.
