---
author: mihaiberq
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Partials


---

## Content

*Sass* allows the creation of **partial** CSS/SCSS files that you can include in other Sass files through imports. This feature promotes modular code, thus keeping files easier to maintain.

All you have to do to mark a file as *partial* is to include an underscore before its name: if the partial should style the header, a good name would be `_header.scss`. The underscore lets Sass know that the file is partial and a CSS file should not be generated for it.

Partials are used with the `@import` directive, of which we will talk in the next insight.


---

## Revision

Sass knows that some `.scss` files are partials because ???

- `their name is starts with an _.`
- `they contain the @partial directive.`
- `they contain the @partial mixin.`
- there are no CSS files generated for them.
