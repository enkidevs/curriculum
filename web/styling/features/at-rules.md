---
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

aspects:
  - introduction
  - workout

tags:

  - #@ #rules


links:

  - '[MDN Docs on at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule){documentation}'


---

# At-Rules (`@`)

---
## Content

The at-rule (`@`) informs CSS with instructions on how to behave.

The regular form for `@` is:

```css
@[KEYWORD] (RULE);
```
Regular @keywords include: `charset`, `import`, and `namespace`.

The nested form for `@` is:
```css
@[KEYWORD] {
/* Nested Statements */
};
```
Nested `@keywords` include: `document`, `font-face`, `keyframes`, `media`, `page`, and `supports`.

These are useful when you want to check if the browser supports a property:
```css
@supports (image-rendering and
    -moz-crisp-edges) {
 /* CSS code if supported*/
image-rendering:
   -webkit-optimize-contrast;
}
```
Or you want different image scaling depending on screen size:
```css
@media screen and (max-width:720px){
  .thumbnail{
    width: 10vh;
    height: 10vh;
  }
}

@media screen and (min-width: 720px){
  .thumbnail{
    width: 15vh;
    height: 15vh;
  }
}
```

---
## Revision

Which of the following is the regular form for an @ rule? ???

* `@[KEYWORD] (RULE);`
* `@[KEYWORD];`
* `@[KEYWORD-RULE];`
