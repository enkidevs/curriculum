---
author: mihaiberq
type: normal
category: must-know
links:
  - '[Scrimba CSS Borders](https://scrimba.com/p/pWvwCg/cmJvzh6){tutorial}'
  - >-
    [MDN Docs on
    border](https://developer.mozilla.org/en-US/docs/Web/CSS/border){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Borders


---

## Content

Borders occupy the space between margin and padding, providing an outline of the element.

`border` has three properties: `width`, `style`, and `color`. Each of them can be declared individually:

```css
div{
  border-width: 4px;
  border-style: solid;
  border-color: red;
}
```

Or you can use the shorthand notation:

```css
div{
  border: red 4px solid;
}
```

You can declare it with **any combination** of `width`, `style`, and `color` in **any order**.

> ⚠️ You need to set the `style` for the border to show. If you don't, the default value is `none`. 

Borders can have different styles such as `solid` (**the most common**), `dashed`, `dotted`, `double`, and others.
 
You can also set borders for sides individually:

```css
div{
  border-left: 4px dashed red;
  border-top: 2px double blue;
  border-right: 10px dotted green;
  border-bottom: 7px solid yellow;
}
```



---

## Practice

In the shorthand declaration:

```css
border: 1 2 3;
```

Which number represents the style of the border?

```plain-text
???
```

- 2
- 1
- 3


---

## Revision

In the shorthand declaration, which number represents the color of the border?

```css
border: 1 2 3;
```

```plain-text
???
```

- 3
- 1
- 2
