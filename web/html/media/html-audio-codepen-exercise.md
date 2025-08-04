---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN Docs for
    audio](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Embed an audio player on the page using the <audio> element.
    2. Add the provided audio link as the source.
    3. Include a fallback message inside the <audio> element:
       "You're seeing this because your browser does not support the audio element."
    
    Audio URL:
    http://soundbible.com/grab.php?id=1954&type=mp3
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style the audio element or the fallback message here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML audio

---

## Content

In this exercise, you will **embed an audio player** into a webpage.  

1. Use the `<audio>` element to create the audio player.  
2. Add the provided audio file URL as the `src`.  
3. Include a fallback `<p>` element with the message:  
   > "You're seeing this because your browser does not support the audio element."  

In the end it should look like this:  
![html-audio-exercise-finished](https://img.enkipro.com/1a308d022a37455c37fc7b9ca4df857a.png)

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Use the `controls` attribute on the `<audio>` tag to display built-in playback controls.  
- Example:  
```html
  <audio controls>
    <source src="audio.mp3" type="audio/mpeg">
    <p>You're seeing this because your browser does not support the audio element.</p>
  </audio>
```