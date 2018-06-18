---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.layout-html.0: 10
  web.semantic-html.0: 10
  web.semantic-html.1: 10
  web.semantic-html.3: 10

aspects:
  - introduction
  - workout
  - deep

links:
  - '[MDN docs for main](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/main){website}'
  - '[W3S docs for main](https://www.w3schools.com/tags/tag_main.asp){website}'

---
# Main element
---
## Content

The HTML `<main>` element is used to specify the main content of a web page, document or an application. It usually consists of content that is directly related to the central topic, or the central functionality of an application. Also, the `<main>` element should not contain content that is repeated throughout the whole website, or across multiple documents, such as:
 - copyright information
 - navigational links
 - search forms
 - sidebars
 - site logo

**Note: The `<main>` element can have a search form as it's content. However, this is only true for when a search form is the main function of the page.**

Example of the main content of a page, in this case, a page describing vehicles:
```
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
```

As you can see in the example above, we have added `<article>` within our `<main>` element to clearly separate each type of vehicle. As for the other way around, you cannot put a `<main>` element as a descendant of the `<article>` element.

Also, the `<main>` element can never be a decendant of a few more elements. These are:
 - `<aside>`
 - `<footer>`
 - `<header>`
 - `<nav>`

Furthermore, you can only have one `<main>` element per web page or document if you want your web page or document to validate.

There is a way for 2 or more `<main>` elements to be present in your document, however, all except one `<main>` element have to have a `hidden` attribute specified.

**Note: Even though the `<main>` element has headings it doesn't contribute the documents outline. Those headings and other outlines within the `<main>` element are only for that `<main>` element. You should use `<body>` or `<h1>`-`<h6>`, and such as the structure of your page.**

---
## Practice

Which HTML container element should only be used once within a page layout?

???

 * `<main>`
 * `<nav>`
 * `<head>`
 * `<footer>`
 * `<one>`
 * `<solo>`


---
## Revision

Can a webpage contain more than one `<main>` container?

???

* Yes, but it will fail validation.
* Yes
* No


---
## Quiz

### How much do you know about the HTML `<main>` element?

Select which of the following items should be contained within a `<main>` container?

???

 * body content
 * webpage logo
 * navigation links
 * copyright information
 * search forms
