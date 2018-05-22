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
  - '[a walkthrough](https://www.quackit.com/html_5/tags/html_video_tag.cfm){website}'
  - '[Documentation on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video){documentation}'

---
# Video
---
## Content

Since HTML5 the `<video>` tag is used to embed videos on a web page or document.
Both the start and end tags are required for the `<video>` element.

Like so:
```
<video src="/video/time-lapse.mp4"
   width="160" height="160" controls>
  <p>
    You're seeing this because
     your browser does not support
     the <video> element.
  </p>
</video>
```

In the example above we have added a video player of a 160 to 160-pixel size with a video called `time-lapse` of type `.mp4`. The paragraph part is to provide fallback content for users that do not have browsers that support HTML5 video.

You can add one or more subtitles to your videos and set a default one via the `<track>` element.
```
<video src="/video/bugs-bunny.mp4"
  width="160" height="160" controls>
  <track kind="subtitles" srclang="en"
    src="bugs-bunny-en.vtt"
     label="English" default>
  <track kind="subtitles" srclang="es"
    src="bugs-bunny-es.vtt"
     label="Español">
  <p>
    You're seeing this because
    your browser does not support
    the <video> element.
  </p>
</video>

```

In the example below, we have added a video player with the same video, but 3 different file formats. We specified the formats through the source/type attributes. The first two formats `.mp4` and `.webm` are currently the supported formats for all browsers.


Example:
```
<video width="160" height="160" controls>
  <source
    src="http://movies.org/bugsbunny.mp4"
    type="video/mp4">
  <source
    src="http://movies.org/bugsbunny.webm"
    type="video/webm">
  <source
    src="http://movies.org/bugsbunny.ogg"
    type="video/ogg">
  <p>
    You're seeing this because
    your browser does not support
    the <video> element.
  </p>
</video>
```

Adding more file formats is good for when a browser can't play a particular file format, so when it can't load it goes down to try the second one, and later the third.

Adding the controls attribute allows the browser to offer controls to the user for play/pause playback, increase/decrease volume buttons, and audio playback.

There are many more functionalities you can add to your videos with attributes. Here are some of them:
 - `poster` = adds a poster for when the video can't play or hasn't loaded yet
 - `autoplay` = plays the video as soon as it's available
 - `muted` = sets the default setting for the audio part of the video
 - `loop` = makes the video play again as soon as it finishes


**Note:**
  - **If your video plays OK on your local computer, but doesn't play on the web server you should add the video types needed on the .htaccess file in your directory where the video is.**

---
## Practice

Finish the sentence:

In order for videos today to be supports on all major web browsers you should use either the `???` or `???` format.

* .mp4
* .webm
* h.246
* codec
* .mp3
* .oog

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

If your video plays OK on your local computer, but doesn't play on the web server, what can fix this?

???

* .htaccess file adding video types needs to be added to server.
* Hosting videos on your server will not be possible.
* The video will be viewable by others, just not you.
* The video file needs to be converted properly to be posted online.
* Close the browser, reopen it, and test the video again.
