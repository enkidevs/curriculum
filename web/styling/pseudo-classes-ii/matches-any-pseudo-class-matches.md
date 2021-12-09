---
author: nene
type: normal
category: feature
tags:
  - css4
links:
  - >-
    [MDN Docs on
    :is](https://developer.mozilla.org/en-US/docs/Web/CSS/:is){documentation}
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

# Matches-any pseudo-class :is


---

## Content

The `:is` pseudo-class allows the application of rules to groups of selectors.

```css
p:is(.alert,.error,.warn){
    color:red;
}
```

The above will make the text of all elements matching `.alert`, `.error` and `.warn` red.

It could be used to apply a particular style rule to a similar element group.

> 💡 `:is()` used to be called `:matches()` but was renamed. However, older browser versions still support it to provide backwards compatibility.

---

## Practice

Complete the following code snippet to set the color of the chosen selectors text blue:

```css
p???(s1, s2, s3){
    ???:blue;
}
```

- `:is`
- `color`
- `:selects`
- `background-color`
- `.is`
- `.selects`


---

## Revision

What does the following CSS code snippet do?

```css
p:is(s1, s2, s3) {
   font-family: "Arial Narrow";
   background-color: red;
}
```

???

- Sets the font family and background colour for all elements matching s1, s2 and s3.
- Sets the font family and background colour for all elements not matching s1, s2 and s3.
- Sets the font family and background colour for all elements.
- Does nothing.
