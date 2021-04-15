---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [HTML <section>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/section){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The Section Element


---

## Content

The HTML `<section>` element is used to represent a standalone section. Usually, This is a section which doesn't have a better element to represent it within that HTML document.

**Note:** Each `<section>` element should be properly identified, usually with a heading `<h1>`-`<h6>`.

Example:

```html
<section>
  <h1>Page name</h1>
  <p>Related info to page</p>
</section>
```

If an `<article>`, `<aside>`, or `<nav>` element is more appropriate in your HTML document, don't use the `<section>` element. If you need a container for styling and/or scripting don't use the `<section>` element, use `<div>` instead.

The `<section>` container element should be used only when the contents would be the information stored as an individual record in a database.

It is encouraged to use the `<article>` element instead of the `<section>` element when it would make more sense to syndicate the contents of the element.


---

## Practice

Which of these rules of thumb is not associated with using a `<section>` element?

???

- `Use <section> when there is naturally a footer at the end of it.`
- `If <article>, <aside>, or <nav> are more appropriate, don't use <section>.`
- `Use <section> when there is naturally a heading at the start of it.`
- `When a container for styling or scripting is needed, use a <div> and not <section>.`


---

## Revision

Do you know when to use `<article>` instead of the `<section>` in page layouts?

Authors are encouraged to use the `<article>` element instead of the `<section>` element when it would make sense to syndicate the contents of the element.

???

- True
- False


---

## Quiz

### How much do you know about HTML container elements?


Which HTML container element should be used only when the contents would be information stored as an individual record in a database?

???

- `<section>`
- `<article>`
- `<blurb>`
- `<data>`
- `<database>`
- `<record>`
