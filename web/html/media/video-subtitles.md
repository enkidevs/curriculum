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
  - '[CodePen: Video subtitles with webvtt](https://codepen.io/enkidevs/pen/YjPYKm){code}'
  - '[a walkthrough](https://www.quackit.com/html_5/tags/html_video_tag.cfm){website}'
  - '[Documentation on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video){documentation}'

---
# Video Subtitles
---
## Content

Subtitles can be added to the videos via the `<track>` element like this:

```
<video src='video/tina.mp4'">
  <track src="video/subtitles.vtt"
  kind="subtitles"
  srclang="en" />
</video>

```

The WebVTT (.vtt), which stands for “Web Video Text Track” file can look like this below and are often created using software programs vs typing all of that out by hand. As you can see, the time stamp states the starting and ending of the subtitle. There are also tags in this case like `<v>`, `<c>`, and `<i>` which allow for unique CSS styling, which can be found in the CodePen Example:  

```WEBVTT

1
00:00:01.300 --> 00:02.300
<v>Tina...</v>

2
00:00:03.900 --> 00:00:05.000
Who the Hell is that?

Sounds
00:00:06.500 --> 00:00:22.500
<c>eerie sounds</c>

3
00:00:23.500 --> 00:00:24.500
<i>[ gasps ]</i>

```

<!--[View CodePen](https://codepen.io/enkidevs/pen/YjPYKm)-->

All WebVTT files start with the line **WebVTT**.

** Multiple Subtitles**

In the case you have videos that support multiple languages, you can provide them like this and in this case the English track was also set as the `default`:

```
<video src="video/short.mp4">
   <track label="English"
   kind="subtitles"
   srclang="en"
   src="captions/en.vtt"
   default>

   <track label="Deutsch"
   kind="subtitles"
   srclang="de"
   src="captions/de.vtt">

   <track label="Español"
   kind="subtitles"
   srclang="es"
   src="captions/es.vtt">
</video>
```

---
## Practice

What HTML element is used to connect subtitles to a video?

???

* `<track>`
* `<captions>`
* `<subtitles>`
* `<scrlang>`
* `<vtt>`


---
## Revision

When working with multiple files that provide the subtitles in various languages with a web video, how is one of them given greater priority that the others.
???

* Add the `default` attribrute to one of them.
* The first file assigned in the `<track`>.
* The last file assigned in the `<track`>.
* Subtitles are always off and must be selected by the user.


---
## Quiz

### How much do you know about web videos?

For files that contain subtitles that can be used with web videos, what file format do they use?

* .vtt
* .sub
* .txt
* .track
