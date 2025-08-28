---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [Documentation on MDN for
    img](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img){documentation}
  - >-
    [A walkthrough on
    w3schools](https://www.w3schools.com/tags/att_area_coords.asp){website}
  - >-
    [Documentation on MDN for
    map](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/map){documentation}
  - >-
    [An example on
    w3schools](https://www.w3schools.com/tags/att_img_usemap.asp){website}
  - >-
    [Official docs on
    w3.org](https://dev.w3.org/html5/spec-preview/image-maps.html){documentation}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create an image of Earth, Mars, and the Moon using the image URL below.
    2. Add an image map with 3 circular areas:
       - Earth: coordinates "120,100,98"
       - Mars: coordinates "290,100,50"
       - Moon: coordinates "400,100,26"
    3. Each circle should:
       - Link to its respective Wikipedia page (open in a new tab).
       - Show a tooltip ("Earth", "Mars", "Moon") when hovered.
    4. Add alt text: "The Earth, Mars and The Moon" for the image.

    Image URL:
    https://img.enkipro.com/b18f16daa3cfa7b6154131f353d627a6.jpeg

    Wikipedia links:
    - https://en.wikipedia.org/wiki/Earth
    - https://en.wikipedia.org/wiki/Mars
    - https://en.wikipedia.org/wiki/Moon
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your image or map here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML image map exercise

---

## Content

In this exercise, you will:  
1. Create an image using the **image URL (located in `html.index` in the `code` tab)**.  
2. Add an image map with 3 circular areas on top of the objects:  
   - Earth (coordinates: `120,100,98`)  
   - Mars (coordinates: `290,100,50`)  
   - Moon (coordinates: `400,100,26`)  
3. Each area should:  
   - Open its Wikipedia page in a new tab.  
   - Show a tooltip ("Earth", "Mars", or "Moon") when hovered.  
4. Add alt text `"The Earth, Mars and The Moon"` for the image.  

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Use the `<map>` element to define the clickable areas and reference it in the `usemap` attribute of `<img>`.  
- Use `<area>` to define each circle with `shape="circle"` and the correct coordinates.  
- Add the `target="_blank"` attribute so links open in a new tab.  
- Example:  
  ```html
  <img src="earth-mars-moon.jpeg" usemap="#space-objects" alt="The Earth, Mars and The Moon">

  <map name="space-objects">
    <area shape="circle" coords="120,100,98" href="https://en.wikipedia.org/wiki/Earth" alt="Earth" title="Earth" target="_blank">
  </map>
```