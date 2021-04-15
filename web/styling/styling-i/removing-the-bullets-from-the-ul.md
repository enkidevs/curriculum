---
author: koenvanlent
type: normal
category: how-to
tags:
  - ul
  - bullets
links:
  - '[List Tutorials](http://css.maxdesign.com.au/listutorial/index.htm){article}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Removing the bullets from the ul


---

## Content

Once you have created your unordered list (`ul`) in HTML, simply add the `list-style-type` property and set it to *none* in your stylesheet.

```css
ul {
    list-style-type: none;
}
```

To remove any spacing, add `margin: 0;` and `padding: 0` to your ul-style.


---

## Practice

Which CSS property is used to determine the type of bullet points for an unordered list?

???

- `list-style-type`
- `bullets-type`
- `list-type`
- `bullets-style`


---

## Revision

What does the following CSS code do?

```css
ul {
   list-style-type: square;
}
```

???

- Tells the list to use squares instead of bullet points.
- Removes the bullet points from the unordered list.
- Sets the unordered list to format text into the shape of a square.
