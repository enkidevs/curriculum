---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.embed-media.2: 10

aspects:
  - introduction
  - workout
  - deep

links:
  - '[MDN Docs for audio](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio){website}'
  - '[W3S Docs for audio](https://www.w3schools.com/html/html5_audio.asp){website}'

---
# Audio
---
## Content

Since HTML5 the `<audio>` tag is used to embed audio on a web page or document.
Both the start and end tags are required for the `<audio>` element.

Like so:
```
<audio src="music/relax.mp3" controls>
  <p>
    You're seeing this because
     your browser does not support
     the <audio> element.
  </p>
</audio>
```

In the example above we have added an audio player with a single song called `relax` of type `.mp3`. The paragraph part is to provide fallback content for user's that do not have browsers that support HTML5 audio.

You can also add more songs via the `<source>` element.

Example 1:
```
<audio controls>
  <source src="some_song.mp3"
    type="audio/mpeg">
     You're seeing this because
     your browser does not support
     the <audio> element.
</audio>
```

Example 2:
```
<audio controls>
  <source src="some_song.mp3"
    type="audio/mpeg">
  <source src"some_song.ogg"
    type="audio/ogg">
  <source src="some_song"
    type="some_song.wav">
     You're seeing this because
     your browser does not support
     the <audio> element.
</audio>
```

In the first example, we have added a song and specified a file format through the `source/type` attributes.

In the second example above, we have added an audio player with the same song, but 3 different file formats.
These 3, `.mp3`,`.ogg` and `.wav` are currently the supported formats for most browsers.

Adding more file formats is good for when a browser can't play a particular file format, so when it can't load it goes down to try the second one, and later the third.

Adding the `controls` attribute allows the browser to offer controls to the user for play/pause playback, increase/decrease volume buttons, and audio playback.

---
## Practice

Add an audio player with controls for a single song:
```
<??? ???=??? ???>
  <p>
  If you are reading this,
  it is because your browser does not
  support the audio element.
  </p>
<???>
```

* audio
* src
* "/music/good_enough.mp3"
* controls
* /audio
* href
* alt

---
## Revision

Which HTML element is used to insert an audio file into the document?

???

* `<audio>`
* `<mp3>`
* `<sound>`
* `<music>`
* `<itunes>`

---
## Quiz

### How much do you know about the HTML audio element?

When you want to provide fallback content for user's that do not have browsers that support HTML5 audio, what do you need to do?

* Add any content between the start and end `<audio>` tags.
* CSS can be used to notify the user.
* Any browser, regardless of the version, can play HTML5 audio.
* Use the attribute "fallback" to provide the appropriate message.
