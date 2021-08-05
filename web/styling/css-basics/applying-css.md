---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [MDN Docs on
    CSS](https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS){documentation}
  - >-
    [Scrimba CSS Documents &
    Cascade](https://scrimba.com/p/pWvwCg/c3vE7cg){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Applying CSS


---

## Content

We talked about CSS and what it can do, but we didn't mention how to make the browser use it alongside the HTML file.

There are three ways of doing so. In terms of specificity, the external CSS file is the "weakest".

In terms of specificity, the rules browsers follow, an element can have only one styling applied. So if we have all three styles on the same element, the inline style would override the internal, and the internal would override the external. Out of the three, the external has the lowest precedence, so we refer to it as the "weakest".

> 💡 Even though it is referred to as the weakest, external stylesheets are the recommended ones.

> We will discuss more about internal and external stylings and specificity later in this workout.

### External CSS file

To create an external CSS document, all you have to do is create new text file with a `.css` extension, in any text editor. Saving the file in the same enclosing folder as the HTML document will prevent path incompatibilities.

Within the `<head>` element of the HTML document, add a new `<link>` element pointing to the CSS file, like so:

```html
<head>
  <link rel="stylesheet" href="main.css">
</head>
```

The `href` attribute contains the path to the `.css` file, much like it would work for the `a` element. The above snippet refers to a style sheet located in the same directory as the HTML document. To link a CSS file inside a subdirectory:

```html
<link rel="stylesheet"
   href="subdir/main.css">
```


---

## Practice

Complete the HTML snippet to import an external CSS file:

```html
<head>
  <??? ???="stylesheet"
           ???="index.css" >
</head>
```

- `link`
- `rel`
- `href`
- `import`
- `name`


---

## Revision

What is the recommended way of applying CSS?

???

- External file.
- Internal CSS.
- Inline CSS.
