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
  - '[CodePen: Main Element](https://codepen.io/enkidevs/pen/QBEyxw){code}'
  - '[MDN docs for main](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/main){website}'
  - '[W3S docs for main](https://www.w3schools.com/tags/tag_main.asp){website}'

---
# Main element
---
## Content

The HTML `<main>` element is used to specify the main content of a web page, document or an application and there should **only be one per web page**. 

![main-styled](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%22202%22%3E%3Cdefs%3E%3Cpath%20id%3D%22a%22%20d%3D%22M21%2036h274v130H21V36z%22%2F%3E%3Cmask%20id%3D%22b%22%20width%3D%22274%22%20height%3D%22130%22%20x%3D%220%22%20y%3D%220%22%20fill%3D%22%23fff%22%3E%3Cuse%20xlink%3Ahref%3D%22%23a%22%2F%3E%3C%2Fmask%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22147%22%20y%3D%2227%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%20transform%3D%22rotate%28-180%20160%20100.5%29%22%2F%3E%3Cpath%20fill%3D%22%233E94EC%22%20d%3D%22M320%2028H0V9c0-4.97056%204.02944-9%209-9h302c4.97056%200%209%204.02944%209%209v19zM0%20174h320v19c0%204.97056-4.02944%209-9%209H9c-4.97056%200-9-4.02944-9-9v-19z%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22DINCondensed-Bold%2C%20DIN%20Condensed%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2223%22%20y%3D%2221%22%3ELOGO%3C%2Ftspan%3E%3C%2Ftext%3E%3Cuse%20stroke%3D%22%23000%22%20stroke-dasharray%3D%223%22%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20mask%3D%22url%28%23b%29%22%20xlink%3Ahref%3D%22%23a%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22DINCondensed-Bold%2C%20DIN%20Condensed%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22132%22%20y%3D%22195%22%3ECOPYRIGHT%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2216%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2233%22%20y%3D%2258%22%3EMain%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

It usually consists of content that is directly related to the central topic, or the central functionality of an application. 

Also, the `<main>` element should not contain content that is repeated throughout the whole website, or across multiple documents, such as:
 - copyright information
 - navigational links
 - search forms
 - sidebars
 - site logo

Example of the main content of a page, in this case, a page describing vehicles:
```
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

<!--[View CodePen](https://codepen.io/enkidevs/pen/QBEyxw)-->

As you can see in the example above, we have added `<article>` within our `<main>` element to clearly separate each type of vehicle. The `main` is also between the `header` and `footer`. 


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
