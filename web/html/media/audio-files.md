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
  - '[MDN: <audio> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio){documentation}'
  - '[W3S: <audio> Element](https://www.w3schools.com/html/html5_audio.asp){documentation}'

---
# Audio Files
---
## Content

In order to support all browsers, it is useful to provide two different types of audio within your `<audio>` players: mp3/m4a & ogg

![audio-formats-browser](https://img.enkipro.com/3e463b8c6eca4d637159f063d1837816.png)

**MP3**: The most popular audio format for it's small compressed size and great audio.

**M4A**: The newest audio format works with all same browsers as MP3, but should be used moving forward.

**OGG**: Less popular than MP3/M4A, but its open source and widely available and actually has greater compression due to its variable bit rate with the same great audio.

Using the `<audio>` tag, multiple
songs can be added via the `<source>` element which will accomodate the approprate file needed for that browser.

```html
<audio controls>
  <source src="some_song.mp3"
    type="audio/mpeg">
  <source src="some_song.ogg"
    type="audio/ogg">
     You're seeing this because
     your browser does not support
     the <audio> element.
</audio>
```

[View CodePen](https://codepen.io/enkidevs/pen/WKjeLW)


---
## Practice

Finish the sentence:

In order for audio files today to be supported on all major web browsers you should use either the `???` or `???` format.

* .mp3/.m4a
* .ogg
* .mp4
* .wav
* .tunes
* flash


---
## Revision

When you want to provide fallback content for user's that do not have browsers that support HTML5 audio, what do you need to do?

???

* Add any content between the start and end `<audio>` tags.
* CSS can be used to notify the user.
* Any browser, regardless of the version, can play HTML5 audio.
* Use the attribute "fallback" to provide the appropriate message.

---
## Quiz

### How much do you know about the HTML audio element?

How many audio files are useful to add to a single `<audio>` element in order to be supported on all major web browsers today?

???

* 2
* 1
* 3
* 4
* 5+
