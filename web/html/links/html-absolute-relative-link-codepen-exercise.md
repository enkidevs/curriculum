---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    anchor](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a){website}
  - >-
    [Article for absolute vs relative link
    paths](https://www.coffeecup.com/help/articles/absolute-vs-relative-pathslinks/){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Write the absolute path to "website-logo.png" located inside the images folder of www.some-website.com.
    2. Write the relative path if the image is inside the same folder as the HTML file.
    3. Write the relative path if the image is inside the "images" folder relative to the HTML file.
    -->

    <div class="your-code">
      <!-- Write your HTML answers here -->

      <p>Absolute path: </p>
      <p>Relative path if in the same folder: </p>
      <p>Relative path if in the images folder: </p>
    </div>
  startingCss: |
    /* 
    You can style your answers here if you'd like.
    Focus on correct paths first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML absolute relative

---

## Content

In this exercise, you need to write the **absolute** and **relative** paths for a file called `website-logo.png`.  

Scenario:  
- You have a website called `www.some-website.com`.  
- Inside the main directory is a folder called `images` which contains the file `website-logo.png`.  

Your task:  
1. Write the **absolute path** to `website-logo.png` inside the `images` folder.  
2. Write the **relative path** if the image is in the **same folder** as the HTML file.  
3. Write the **relative path** if the image is inside the `images` folder relative to the HTML file.  

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- An **absolute path** contains the full URL including the protocol:  
  `http://www.some-website.com/images/website-logo.png`  
- A **relative path** does not start with `http://` and depends on the current file location.  
- Example relative paths:  
  - Same folder: `website-logo.png`  
  - Images folder: `images/website-logo.png`  
