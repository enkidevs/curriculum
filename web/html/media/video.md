---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep

links:
  - '[CodePen: Video: Simple HTML Player](https://codepen.io/enkidevs/pen/MBYOJb){code}'
  - '[HTML <video> Tutorial](https://www.quackit.com/html_5/tags/html_video_tag.cfm){article}'
  - '[HTML <video> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video){documentation}'

---
# The `<video>` Element
---
## Content

The `<video>` tag was introduced in HTML5 and is used to embed videos on a web page or document.

```html
<video src="/video/time-lapse.mp4"
   width="525" height="360" controls>
  <p>
    You're seeing this because
    your old browser does not
    support the <video> element.
  </p>
</video>
```

![video-player](https://img.enkipro.com/6f116395407c80b8ce53edb00bc9a86e.png)

[View CodePen](https://codepen.io/enkidevs/pen/MBYOJb)

In the example, the paragraph within the `video` element provides a text note to users that do not have browsers that support HTML5 video - this is called 'fallback content'. Images can be used as fall backs, too!

Adding the `controls` attribute allows the browser to offer controls to the user for play/pause playback, increase/decrease volume buttons, and audio playback.

There are many more functionalities you can add to your videos with attributes. Here are some of them:
 - `poster` = adds a poster for when the video can't play or hasn't loaded yet
 - `autoplay` = plays the video as soon as it's available
 - `muted` = sets the default setting for the audio part of the video
 - `loop` = makes the video play again as soon as it finishes



---
## Practice

Complete the following snippet in order for it to be valid:
```html
<??? ???="videofile.mp4"
     height="525"
     width="360
     controls>
<???>
```
* `video`
* `src`
* `/video`
* `vid`
* `href`
* `/vid`


---
## Revision

Which HTML element is used to insert a movie clip or video stream into the document?

???

* `<video>`
* `<vid>`
* `<media>`
* `<youtube>`
* `<stream>`
* `<movie>`

---
## Quiz

### How much do you know about web videos?

If the browser doesn't support the `<video>` element, what happens?

```html
<video src="/video/time-lapse.mp4"
   controls width="360" height="212" >
   <img src="video.png" alt="">
</video>
```

???

* The video.png image will display instead.
* Nothing displays on the page any content around it will take it's place.
* Nothing displays on the page, but the video size is taken up preventing any other content from taking its space.
* The video controls will appear, but the video will never load.
