---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    section](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/section){website}
  - >-
    [MDN docs for
    aside](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/aside){website}
  - >-
    [MDN docs for
    article](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/article){website}
  - >-
    [MDN docs for
    semantics](https://developer.mozilla.org/en-US/docs/Glossary/Semantics){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Wrap the first paragraph in a <section> element.
    2. Wrap the second paragraph in an <article> element.
    3. Wrap the last paragraph in an <aside> element.
    4. Make sure the existing headers (<h2> and <h4>) stay within their related elements.
    -->

    <div class="your-code">
      <h2>Semantics exercise 2</h2>
      <p>First paragraph</p>

      <h2>Enki</h2>
      <p>
        We build personalized bots to help you test, visualize and level up skills simply and effectively. Content and interactions are bite-sized, use the latest in learning science, and adapt to each user over time. The future of continuous learning is here.
      </p>

      <h4>Enki</h4>
      <p>
        God of Creation, Intelligence, Crafts, Water, Seawater, Lakewater, Fertility, Semen, Magic, Mischief
      </p>
    </div>
  startingCss: |
    .demo {
      width: 723px;
    }

    section {
      border: thin black solid;
      margin: 1em;
      padding: 1em;
      width: 623px;
      overflow: auto;
    }

    article {
      font-style: italic;
      font-size: smaller;
      text-indent: 0;
      border: thin black solid;
      margin: 1em;
      padding: 1em;
      float: left;
      width: 300px;
    }

    aside {
      width: 100px;
      padding-left: .5rem;
      margin-left: .5rem;
      float: right;
      font-style: italic;
      font-size: smaller;
      text-indent: 0;
      border: thin black solid;
      margin: 1em;
      padding: 1em;
      width: 40%;
    }
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML semantics 2

---

## Content

In this exercise, you will use **semantic elements** to structure your HTML properly.  

1. Wrap the first paragraph in a `<section>` element.  
2. Wrap the second paragraph in an `<article>` element.  
3. Wrap the third paragraph in an `<aside>` element (because it's tangentially related).  

In the end it should look like this:  
![html-semantics-2-exercise-finished](https://img.enkipro.com/b602b8cb6f784db2658297cbcd717711.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- `<section>` is used for standalone thematic grouping of content.  
- `<article>` is for self-contained, independent content.  
- `<aside>` is for content indirectly related to the main content.  
