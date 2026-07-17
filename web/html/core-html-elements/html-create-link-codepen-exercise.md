---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [Simple explanation for
    hyperlinks](http://www.hyperlinkcode.com/make-hyperlink.php){website}

webSetupCode:
  startingHtml: |
    <div class="directions">
      <p>Please update the existing text into a hyperlink and have it link to "http://www.enki.com".</p>
    </div>
    <p class="label">Your HTML:</p>

    <div class="your-code">
      <!-- Add your HTML to this text below. -->

      I am a link to Enki.com's website.
    
    </div>
  startingCss: |
    /* You can add CSS here if you'd like */

  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML create link

---

## Content

In this exercise, you will turn text into a **clickable hyperlink**.  

Update the given text so that clicking it will take you to:
```plain-text
http://www.enki.com
```

In the end it should look like this:
![link-to-website-exercise-finished](https://img.enkipro.com/a0b96acfb2d6c2901aac179db9a97e82.png)

If you’re unsure how, check the hints[1].

---

## Footnotes


[1: Hints]
- Use the `<a>` tag to create a hyperlink.  
- The `href` attribute should contain the URL of the page you want to link to.  
- Wrap the text you want to be clickable inside the `<a>` tag.  
