---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [a
    walkthrough](https://www.quackit.com/html_5/tags/html_video_tag.cfm){website}
  - >-
    [Documentation on
    MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video){documentation}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Embed a video player on the page using the <video> element.
    2. Add the provided video link as the source.
    3. Set the dimensions of the video to 250x250.
    4. Include a fallback message inside the <video> element:
       "You're seeing this because your browser does not support the video element."
    
    Video URL:
    https://static.videezy.com/system/resources/previews/000/004/210/original/4.mp4
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style the video element or the fallback message here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML video

---

## Content

In this exercise, you will **embed a video player** into a webpage.  

1. Use the `<video>` element to create the video player.  
2. Add the provided video file URL as the `src`.  
3. Set the width and height to **250x250**.  
4. Include a fallback `<p>` element with the message:  
   > "You're seeing this because your browser does not support the video element."  

In the end it should look like this:  
![html-video-exercise-finished](https://img.enkipro.com/f23caa307690c64d47148aba69f54cc0.png)

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Use the `controls` attribute on the `<video>` tag to display built-in playback controls.  
- Example:  
```html
  <video controls width="250" height="250">
    <source src="video.mp4" type="video/mp4">
    <p>You're seeing this because your browser does not support the video element.</p>
  </video>
```