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
  - '[MDN docs for semantics](https://developer.mozilla.org/en-US/docs/Glossary/Semantics){website}'
  - '[W3s docs for semantics](https://www.w3schools.com/html/html5_semantic_elements.asp){website}'

---
# Semantic Containers
---
## Content

When describing semantic elements or containers, in HTML, the term `semantic` refers to when both the developer and the browser clearly understand the meaning of the element.


Some new semantic elements introduced in HTML5:
 - `<article>`
 - `<aside>`
 - `<details>`
 - `<footer>`
 - `<header>`
 - `<main>`
 - `<nav>`
 - `<section>`
 - `<summary>`
 - `<time>`


Short explanation of each element:

 - `<article>` = self-contained content that is distributable and reusable.
 - `<aside>`= content only slightly related to the main content.
 - `<details>` = widget that appears only when toggled with a `<summary>` or `<label>`
 - `<footer>` = represents a root element
 - `<header>` = represents introductory content
 - `<main>` = represents dominant or main content
 - `<nav>` = represents a section of the page for navigational links
 - `<section>` = represents a standalone section
 - `<summary>` = specifies a summary or caption for a `<details>` element
 - `<time>` = represents a specific period in time


For some of the elements above, the equivalent way of writting in HTML4 was:
 - `<div class="article">`
 - `<div class="aside">`
 - `<div class="footer">`
 - `<div class="header">`
 - `<div class="main">`
 - `<div class="nav">`
 - `<div class="section">`

The `<div>` and `<span>` elements are HTML containers, however, they are not semantic elements.

Also, there are elements which are containers, however, they are not semantic elements.

These are:
 - `<div>` defines a division or section
 - `<span>` used to group inline elements


---
## Practice

Select which is not a semantic container element in HTML5?

???

 * container
 * header
 * footer
 * nav
 * main

---
## Revision

`<header>`, `<footer>`, `<nav>`, `<main>`, `<article>`, `<aside>`, `<section>` are best described as what in HTML?

???

 * semantic elements
 * container attributes
 * division blocks
 * tangentially related
 * generic containers
 * layout boxes
 * articulated profiles

---
## Quiz

### How much do you know about sectioning elements?

What is the term that refers to "when both developers and search engines understand the organization of the page content"?

???

 * semantic
 * curated
 * embedded
 * impressionistic
 * influenced
 * organic
 * affiliated
 * optimized

## Game

Play the game determining if the HTML elements are the new HTML5 that HTML4 didn’t support or not.

HTML4:HTML5

```false
<div>
%exp
Although <div> is a HTML5 container, it was also the primary block element commonly used in layouts in HTML4.
%

<span>
%exp
Although <span> is a HTML5 container, it was also the primary inline element commonly used in HTML4.
%

<space>
%exp
<space> is not a valid HTML4 or HTML5 element.
%

<container>
%exp
<container> is not a valid HTML4 or HTML5 element.
%

<form>
%exp
Although <form> is a HTML5 container, it was also commonly used in HTML4.
%

<semantic>
%exp
<semantic> is not a valid HTML4 or HTML5 element.
%

<navigation>
%exp
<navigation> is not a valid HTML4 or HTML5 element, although the <nav> element is a new HTML5 element specific for site navigation.
%
```

```true

<header>
%exp
<header> is new HTML5 element. In HTML4, techniques like <div class="header"> had to be used.
%

<footer>
%exp
<footer> is new HTML5 element. In HTML4, techniques like <div class="footer"> had to be used.
%

<nav>
%exp
<nav> is new HTML5 element. In HTML4, techniques like <div class="nav"> had to be used.
%

<main>
%exp
<main> is new HTML5 element. In HTML4, techniques like <div class="main"> had to be used.
%

<aside>
%exp
<aside> is new HTML5 element. In HTML4, techniques like <div class="aside"> had to be used.
%

<section>
%exp
<section> is new HTML5 element. In HTML4, techniques like <div class="section"> had to be used.
%

<article>
%exp
<article> is new HTML5 element. In HTML4, techniques like <div class="article"> had to be used.
%

```
