---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    figure](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figure){website}
  - >-
    [MDN docs for
    figcaption](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figcaption){website}
  - >-
    [MDN docs for
    semantics](https://developer.mozilla.org/en-US/docs/Glossary/Semantics){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Wrap the poem in the appropriate element used for self-contained content.
    2. Add a caption that contains the Author and poem name.
    -->

    <div class="your-code">
      <p>
        The rose is a rose,
        And was always a rose.
        But the theory now goes
        That the apple’s a rose,
        And the pear is, and so’s
        The plum, I suppose.
        The dear only knows
        What will next prove a rose.
        You, of course, are a rose –
        But were always a rose.
      </p>
      <cite>ROBERT FROST</cite>. Author: “THE ROSE FAMILY”
    </div>
  startingCss: |
    figcaption {
      display: table-caption;
      caption-side: bottom;
    }

    figure {
      display: table;
      width: 40%;
      text-align: left;
      font-style: italic;
      font-size: smaller;
      text-indent: 0;
      border: thin black solid;
      margin: 1em;
      padding: 1em;
    }
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML semantics 1

---

## Content

In this exercise, you will use **semantic elements** to structure a poem and its author correctly.  

In the end it should look like this:  
![html-semantics-poem-exercise-finished](https://img.enkipro.com/a768110fedc8b655e840c92529deeb15.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- `<figure>` is used for self-contained content like poems, images, or diagrams.  
- `<figcaption>` adds a caption or description:  
```html
<figure>
  <p>Your content...</p>
  <figcaption>Author: Poem Name</figcaption>
</figure>
```