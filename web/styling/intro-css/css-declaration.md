---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Learn/CSS){documentation}'


---

# CSS Declaration

---

## Content

A CSS file is made up of _selectors_ (a way of pointing to the HTML elements to be changed) and _declarations_ (a property and value pair).

The syntax for a CSS _declaration_ is:

```
background-color: red
```

The property we are looking to change is `background-color`. The `:` separates the two entities, and `red` is the new property value.

Every _declaration_ has to be located inside a _block_:

```
{
  background-color: red
}
```

Multiple declaration can be grouped inside a block. In this case, semicolons, `;` are required after each declaration:

```
{
  background-color: red;
  text-decoration: underline;
}
```

The above snippets made some changes, but CSS doesn't know which elements they are referring to. _Selectors_ are used to specify those elements:

```css
p {
  background-color: red;
  text-decoration: underline;
}
```

`p` is a type selector. Whatever CSS rule you apply to `p` in this example, it will affect all instances of `<p>` elements in the HTML document.

---

## Practice

Complete the following snippet with the general syntax for a CSS declaration:

```
??? {
  ??? ??? ???;
}
```

- `selector`
- `property`
- `:`
- `value`
- `=`
- `background-decoration`
- `red`

---

## Revision

Complete the following snippet with the general syntax for a CSS declaration:

```
??? {
  ??? ??? ???;
}
```

- `selector`
- `property`
- `:`
- `value`
- `=`
- `background-decoration`
- `red`
