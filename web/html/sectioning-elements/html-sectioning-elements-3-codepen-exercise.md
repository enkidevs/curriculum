---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for
    main](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/main){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Wrap the existing content with the correct element (<main>).
    -->

    <div class="your-code">
      <h1>Smartphones</h1>
      <p>
        Smartphones are small portable computers most people have.
      </p>

      <article>
        <h2>Iphone</h2>
        <p>
          Iphones are smart phones that run iOS and are made by Apple.
        </p>
        <p>... </p>
      </article>

      <article>
        <h2>Galaxy</h2>
        <p>
          Galaxy's are smartphones that run on Android and are made by Samsung.
        </p>
        <p>... </p>
      </article>

      <article>
        <h2>ONE</h2>
        <p>
          ONE are smartphones that run on Android and are made by HTC.
        </p>
        <p>... </p>
      </article>
    </div>
  startingCss: |
    /* 
    You don't need CSS for this exercise.
    Focus on using the correct element first.
    */
  startingJs: |
    // No JavaScript needed for this exercise

---

# HTML semantics 3

---

## Content

In this exercise, you will **wrap the main content of the page** in the appropriate semantic element.  

Use the `<main>` element to identify the dominant content of the page.  

In the end it should look like this:  

![html-semantics-3-finished](https://img.enkipro.com/865264f88c9f9471b7eb82f49c871de8.png)

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Use the `<main>` element to wrap the primary content of the page.  
- Do **not** include headers, footers, or navigation bars inside `<main>`.  
```html
<main>
  <!-- main page content -->
</main>
```