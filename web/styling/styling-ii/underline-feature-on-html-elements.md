---
author: oj14henry
type: normal
category: feature
tags:
  - hyperlink
  - underline
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

# Underline feature on HTML elements


---

## Content

To remove the natural underline feature that comes with `a` elements:

```css
a {
    text-decoration: none;
}
```

To underline a `span`:

```html
<span class="underline"> Span </span>
```

Use:

```css
span.underline {
  text-decoration: underline;
}
```


---

## Practice

Remove the default underlining for `a` elements:

```css
a {
  ??? : ???;
}
```

- `text-decoration`
- `none`
- `decoration`
- `initial`
- `remove`
- `underline`


---

## Revision

What does the following CSS code do?

```css
a {
   text-decoration: none;
}
```

 ???

- `Removes the natural underline feature on all <a> elements.`
- `Reverts and changes made to the text in all <a> elements, such as different colors.`
- `Adds the natural underline feature to all <a> elements.`
