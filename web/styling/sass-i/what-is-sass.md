---
author: mihaiberq

levels:

  - basic

  - medium

type: normal

category: must-know




---

# What Is Sass?

---

## Content

**Sass**, or _Syntactically Awesome StyleSheets_, is a CSS preprocessor which unlocks some features that are yet to have a concrete syntax in CSS. Some of these features are variables, inheritance, nesting and mixins.

A preprocessor is a program that takes an input and produces an output to be used by another program. _Sass_ understands two types of syntaxes:

- **SCSS** (Sassy CSS): an extension to the CSS syntax, similar enough that any valid _.css_ file is a valid _.scss_ file.
- **Sass**: the indented syntax version of SCSS, using indentation instead of brackets and new lines instead of semicolon; the files have _.sass_ extension.

The `sass-convert` command line utility allows fast conversion between the two syntaxes:

```bash
# Sass to SCSS
$ sass-convert main.sass main.scss
# SCSS to Sass
$ sass-convert main.scss main.sass
```

In the following insights, we will be using the _SCSS_ syntax.

To see the difference between _Sass_, _SCSS_ and the resulting _CSS_ code, consider the following example:

```html
<div>
  <h2>Title</h2>
  <p>Hello Sass!</p>
</div>
```

With the _.sass_ file:

```css
$blue: #0022ff
$size: 34px

div
  background-color: $blue
  h2
    font-weight: normal
    font-size: $size
    &:hover
      color: $blue
  p
    font-size: $size / 2
```

The equivalent _.scss_ syntax:

```css
$blue: #0022ff;
$size: 34px;

div {
  background-color: $blue;
  h2 {
    font-weight: normal;
    font-size: $size;
    &:hover {
      color: $blue;
    }
  }
  p {
    font-size: $size / 2;
  }
}
```

And, finally, the compiled _.css_ file:

```css
div {
  background-color: #0022ff;
}
div h2 {
  font-weight: normal;
  font-size: 34px;
}
div h2:hover {
  color: #0022ff;
}
div p {
  font-size: 17px;
}
```

---

## Practice

The CSS extensions with indented syntax is ???

- Sass
- SCSS
- less
- CSS

---

## Revision

Fill in the gaps such that the following statement becomes true (pick `_` if no word should go there):

```
Any ??? CSS file is a valid ??? file.
```

- valid
- SCSS
- Sass
- \_
- preprocessed
