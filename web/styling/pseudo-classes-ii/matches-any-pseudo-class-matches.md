---
author: nene
type: normal
category: feature
tags:
  - css4
links:
  - >-
    [MDN Docs on
    :matches](https://developer.mozilla.org/en-US/docs/Web/CSS/:is){documentation}
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

# Matches-any pseudo-class :matches


---

## Content

The `:matches` pseudo-class allows the application of rules to groups of selectors.

```css
p:matches(.alert,.error,.warn){
    color:red;
}
```

The above will make the text of all elements matching `.alert`, `.error` and `.warn` red.

Could be used to apply a particular style rule to a similar element group.


---

## Practice

Complete the following code snippet to set the color of the chosen selectors text blue:

```css
p???(s1, s2, s3){
    ???:blue;
}
```

- `:matches`
- `color`
- `:selects`
- `background-color`
- `.matches`
- `.selects`


---

## Revision

What does the following CSS code snippet do?

```css
p:matches(s1, s2, s3) {
   font-family: "Arial Narrow";
   background-color: red;
}
```

???

- Sets the font family and background colour for all elements matching s1, s2 and s3.
- Sets the font family and background colour for all elements not matching s1, s2 and s3.
- Sets the font family and background colour for all elements.
- Does nothing.
