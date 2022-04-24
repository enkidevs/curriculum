---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [MDN: <main>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/main){documentation}
  - >-
    [W3S: <main>
    Element](https://www.w3schools.com/tags/tag_main.asp){documentation}
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

# The main Element


---

## Content

The HTML `<main>` element is used to specify the main content of a web page, document or an application and there should **only be one per web page**.

![main-styled](https://img.enkipro.com/15f6a35ddb333294e969b5669c3ccb0b.png)

It usually consists of content that is directly related to the central topic, or the central functionality of an application.

Also, the `<main>` element should not contain content that is repeated throughout the whole website, or across multiple documents, such as:

- copyright information
- navigational links
- search forms
- sidebars
- site logo

Example of the main content of a page, in this case, a page describing vehicles:

```html
<header>
  <img src="logo.svg" alt="Company Logo">
</header>
<main>
  <h1>Vehicles</h1>
  <p>
    Vehicles are ways of transports
    humans made of ease of transport.
  </p>

 <article>
    <h2>Cars</h2>
    <p>
      This is a ground vehicle
      which has 4 tires,
      is very stable and is
      perfect for driving
      small groups
      like family or friends,
      between 4-6 people.
    </p>
    <p>... </p>
 </article>

 <article>
    <h2>Bus</h2>
    <p>
      This is also a ground vehicle
      which has 8-12 tires,
      is also very stable,
      and is used to transport
      large groups of people
      at once(80 max).
    </p>
    <p>... </p>
  </article>

 <article>
    <h2>Aeroplane</h2>
    <p>
      This is a flying vehicle,
      which is used to transport
      large amounts of people
      (up to 200 people),
      usualy to places that
      ground vehicles can't
      get too easily, or
      can't get fast enough.
    </p>
    <p>... </p>
 </article>
</main>
<footer>
    <p>© Copyright</p>
</footer>
```

The `<main>` container doesn't have any visual style without CSS. The CSS in this example may be a bit complex at this time, but hopefully it inspires you to learn more CSS!

[View CodePen](https://codepen.io/enkidevs/pen/QBEyxw)

As you can see in the example above, we have added `<article>` within our `<main>` element to clearly separate each type of vehicle. The `main` is also between the `header` and `footer`.


---

## Practice

Which HTML container element should only be used once within a page layout?

```html
<???>
```

- `main`
- `nav`
- `head`
- `footer`
- `one`
- `solo`


---

## Revision

Can a webpage contain more than one `<main>` container?

???

- Yes, but it will fail validation.
- Yes
- No


---

## Quiz

### How much do you know about the HTML


`<main>`

 element?

Select which of the following items should be contained within a `<main>` container?

???

- body content
- webpage logo
- navigation links
- copyright information
- search forms
