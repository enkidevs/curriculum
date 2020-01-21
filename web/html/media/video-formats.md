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
  - '[Walkthrough for <video>](https://www.quackit.com/html_5/tags/html_video_tag.cfm){article}'
  - '[Validated on css-tricks.com](https://css-tricks.com/snippets/html/video-for-everybody-html5-video-with-flash-fallback/){documentation}'

---
# Video Formats
---
## Content

Due to all the various ways users can view web content  today (computers, phones, game systems, etc), there are various video file formats required by each of them to view the videos properly. It is considered a best practice to provide your video in all of these formats, so when a browser can't load the first file, it will try the second one, and later the third, eventually finding one that will work.

![video-formats-browser](https://img.enkipro.com/ff8869c38fe1517b45e5a8e6aeb811b4.png)

As you can see, you really only need 2 HTML5 video formats for modern web browsers. Since Google created WebM, it has become more common to provide only WebM & MP4 for modern HTML5 browsers.

This CodePen will provide all the necessary code - it's a decent chunk compared to just the `video` element.

[View CodePen](https://codepen.io/enkidevs/pen/xJbYLE)

**Note:**
- If your video plays OK on your local computer, but doesn't play on the web server you should add the video types needed on the .htaccess file in your directory where the video is.

Create a file in your main web folder with the filename `.htaccess`. Then, add this text to the document:

```text
AddType video/ogg .ogv
AddType video/mp4 .mp4
AddType video/webm .webm
```

---
## Practice

Finish the sentence:

In order for videos to be supported on all major web browsers you should use the `???` format.

* .mp4 or .webm
* h.246 or codec
* .mp3 or .oog
* flash or .mp3

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
