---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    dfn](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dfn){website}
  - >-
    [MDN docs for
    abbr](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/abbr){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Define the abbreviation (HTML) using the correct elements (<dfn> and <abbr>).
    2. Add a description to appear when the user hovers over the abbreviation.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You don't need to style anything for this exercise.
    Focus on using the correct elements first.
    */
  startingJs: |
    // No JavaScript needed for this exercise

---

# HTML dfn abbr

---

## Content

In this exercise, you will **define an abbreviation** and show a description as a tooltip when the user hovers over it.  

Use the `<dfn>` element to identify the term being defined and `<abbr>` to add the tooltip with the full definition.  

In the end it should look like this:  
![html-dfn-abbr-finished](https://img.enkipro.com/5513c764ba4162e6f281ac8030aefb6f.png)  

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Use `<dfn>` for the defining instance of a term:  
```html
<dfn>HTML</dfn>
```

- Wrap the term in <abbr> to add the tooltip with a title attribute:
```html
<abbr title="HyperText Markup Language">HTML</abbr>
```

- You can nest <abbr> inside <dfn>:
```html
<dfn><abbr title="HyperText Markup Language">HTML</abbr></dfn>
```
