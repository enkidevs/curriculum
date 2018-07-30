---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.embed-media.1: 10

aspects:
  - introduction
  - workout
  - deep

links:
  - '[CodePen: Video: Simple HTML Player](https://codepen.io/enkidevs/pen/MBYOJb){code}'
  - '[a walkthrough](https://www.quackit.com/html_5/tags/html_video_tag.cfm){website}'
  - '[Documentation on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video){documentation}'

---
# Video
---
## Content

The `<video>` tag was introduced in HTML5 and is used to embed videos on a web page or document.

```
<video src="/video/time-lapse.mp4"
   width="525" height="360" controls>
  <p>
    You're seeing this because
    your old browser does not 
    support the <video> element.
  </p>
</video>
```

![video-player](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22206%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22a%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%22.57352%25%22%20y2%3D%22100%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%239C9C9C%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23D8D8D8%22%2F%3E%3C%2FlinearGradient%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22206%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cg%20transform%3D%22translate%2820%2020%29%22%3E%3Cpath%20fill%3D%22url%28%23a%29%22%20stroke%3D%22%23979797%22%20d%3D%22M.5.5h279v165H.5z%22%2F%3E%3Crect%20width%3D%22240%22%20height%3D%224%22%20x%3D%2220%22%20y%3D%22149%22%20fill%3D%22%236A686A%22%20rx%3D%222%22%2F%3E%3Ccircle%20cx%3D%2222%22%20cy%3D%22151%22%20r%3D%226%22%20fill%3D%22%23D8D8D8%22%20stroke%3D%22%23979797%22%2F%3E%3C%2Fg%3E%3Ctext%20fill%3D%22%236A686A%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2237%22%20y%3D%22158%22%3E0%3A00%20%2F%203%3A14%3C%2Ftspan%3E%3C%2Ftext%3E%3Cg%20stroke%3D%22%23ECE8E6%22%20transform%3D%22translate%28134%2064%29%22%3E%3Ccircle%20cx%3D%2226%22%20cy%3D%2226%22%20r%3D%2226%22%20fill%3D%22%23EEE%22%2F%3E%3Cpath%20fill%3D%22%23000%22%20d%3D%22M36%2026.5L22%2035V18z%22%2F%3E%3C%2Fg%3E%3Cg%20fill%3D%22%236A686A%22%20transform%3D%22translate%28275%20144%29%22%3E%3Ccircle%20cx%3D%222%22%20cy%3D%222%22%20r%3D%222%22%2F%3E%3Ccircle%20cx%3D%222%22%20cy%3D%228%22%20r%3D%222%22%2F%3E%3Ccircle%20cx%3D%222%22%20cy%3D%2214%22%20r%3D%222%22%2F%3E%3C%2Fg%3E%3Cg%20fill%3D%22%236A686A%22%3E%3Cpath%20d%3D%22M238%20145h5v2h-5z%22%2F%3E%3Cpath%20d%3D%22M240%20145v5h-2v-5zm-2%2014v-5h2v5z%22%2F%3E%3Cpath%20d%3D%22M238%20157h5v2h-5zm14%202h-5v-2h5z%22%2F%3E%3Cpath%20d%3D%22M250%20159v-5h2v5zm2-14v5h-2v-5z%22%2F%3E%3Cpath%20d%3D%22M252%20147h-5v-2h5z%22%2F%3E%3C%2Fg%3E%3Cpath%20fill%3D%22%236A686A%22%20d%3D%22M204%20149h9v6h-9z%22%2F%3E%3Cpath%20fill%3D%22%236A686A%22%20d%3D%22M206%20152l7-8v16z%22%2F%3E%3Cpath%20stroke%3D%22%236A686A%22%20d%3D%22M215.4487%20144.49083c2.994.84816%204.68394%202.50877%205.06981%204.98183.38587%202.47305.20052%204.52745-.55604%206.16321-1.036%201.6601-2.5406%203.05044-4.51376%204.17103%22%2F%3E%3Cpath%20fill%3D%22%236A686A%22%20d%3D%22M215%20149c1.30582.605%201.95873%201.49717%201.95873%202.67654%200%201.17937-.65291%202.28719-1.95873%203.32346v-6z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/MBYOJb)-->

In the example, the paragraph within the `video` element provides a text note to uses that do not have browsers that support HTML5 video - this is called 'fallback content'. Images can be used as fall backs, too!

Adding the `controls` attribute allows the browser to offer controls to the user for play/pause playback, increase/decrease volume buttons, and audio playback.

There are many more functionalities you can add to your videos with attributes. Here are some of them:
 - `poster` = adds a poster for when the video can't play or hasn't loaded yet
 - `autoplay` = plays the video as soon as it's available
 - `muted` = sets the default setting for the audio part of the video
 - `loop` = makes the video play again as soon as it finishes
  

---
## Practice

Complete the following snippet in order for it to be valid:
```
tag = ???

<tag ???="videofile.mp4" 
     height="525" 
     width="360 
     controls>
</tag>
```
* `video`
* `src`
* `vid`
* `href`
* `movie`


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

```
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