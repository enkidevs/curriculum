---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for description
    lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dl){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a description list (<dl>).
    2. Add two terms (<dt>) and their respective descriptions (<dd>).
    3. Style the terms as bold and the descriptions as italic.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->

      <!-- Term 1: Enki -->
      <!-- Description: Founded in 2015, Enki is a team of developers, educators, and designers. We represent 7 countries, 8 timezones, 9 spoken languages, and 1 goal — supporting lifelong learners. -->

      <!-- Term 2: Enki App -->
      <!-- Description: Level up your programming skills or learn to code with daily workouts — anytime, anywhere! Choose any one of our dev skill topics to get a personalized training path and improve your skills. Track your progress, unlock games, join a team of friends or coworkers, and rise through the ranks! -->
    </div>
  startingCss: |
    /* 
    You can style the <dt> as bold and the <dd> as italic using CSS.
    Or you can use <b> and <i> tags directly inside the HTML.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML description list

---

## Content

In this exercise, you will create a **description list** with:  
1. Two terms (`<dt>`)  
2. Two definitions (`<dd>`)  

Make the terms **bold** and the definitions **italic**.  

Terms and descriptions:  
- **Enki**: Founded in 2015, Enki is a team of developers, educators, and designers. We represent 7 countries, 8 timezones, 9 spoken languages, and 1 goal — supporting lifelong learners.  
- **Enki App**: Level up your programming skills or learn to code with daily workouts — anytime, anywhere! Choose any one of our dev skill topics to get a personalized training path and improve your skills. Track your progress, unlock games, join a team of friends or coworkers, and rise through the ranks!  

In the end it should look like this:  
![html-description-list-exercise-finished](https://img.enkipro.com/6b0b32686bfefff34572f3092b98c048.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- A description list uses `<dl>` as the container, `<dt>` for the term, and `<dd>` for the description.  
- Example:  
```html
  <dl>
    <dt><b>Term</b></dt>
    <dd><i>Description</i></dd>
  </dl>
```