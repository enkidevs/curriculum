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

Let's take a look at how you can apply CSS to your HTML file!

There are three ways can apply CSS:
1. Inline (you apply the `style` attribute to HTML elements)
2. Internal (you use the `<style>` element in the `<head>` section)
3. External (you use the <link> element to reference an external CSS file)

You can only use one of these methods to apply CSS to an HTML element. If an element receives styling from two different methods (e.g., inline and external) then **specificity** comes into play. 

In terms of specificity, inline is the *strongest* (overrides any other styles) and external is the *weakest* (is overridden by any other styles).

> 💡 Although the external method is the *weakest*, it is the recommended method as it splits the resources into *structure* and *style*.

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


