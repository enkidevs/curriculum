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
  - '[CodePen: Simple Audio Element](https://codepen.io/enkidevs/pen/ajzGRe){code}'
  - '[MDN Docs for audio](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio){website}'
  - '[W3S Docs for audio](https://www.w3schools.com/html/html5_audio.asp){website}'

---
# Audio
---
## Content

Since HTML5, the `<audio>` tag is used to embed audio on a web page or document. 

Like so:
```
<audio src="audio.mp3" controls>
  <p>
    You're seeing this because
     your browser does not support
     the <audio> element.
  </p>
</audio>
```

![audio-player](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2292%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2292%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Crect%20width%3D%22280%22%20height%3D%2252%22%20x%3D%2220%22%20y%3D%2220%22%20fill%3D%22%23F1F3F4%22%20rx%3D%2226%22%2F%3E%3Cg%20transform%3D%22translate%28150%2038%29%22%3E%3Crect%20width%3D%2274%22%20height%3D%224%22%20x%3D%226%22%20y%3D%224%22%20fill%3D%22%23C1C2C3%22%20rx%3D%222%22%2F%3E%3Ccircle%20cx%3D%226%22%20cy%3D%226%22%20r%3D%226%22%20fill%3D%22%230B0B0B%22%2F%3E%3C%2Fg%3E%3Ctext%20fill%3D%22%236A686A%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2269.5%22%20y%3D%2249%22%3E0%3A00%20%2F%200%3A06%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23000%22%20stroke%3D%22%23ECE8E6%22%20d%3D%22M56%2044.5L42%2053V36z%22%2F%3E%3Cg%20fill%3D%22%23000%22%20transform%3D%22translate%28274%2036%29%22%3E%3Ccircle%20cx%3D%222%22%20cy%3D%222%22%20r%3D%222%22%2F%3E%3Ccircle%20cx%3D%222%22%20cy%3D%228%22%20r%3D%222%22%2F%3E%3Ccircle%20cx%3D%222%22%20cy%3D%2214%22%20r%3D%222%22%2F%3E%3C%2Fg%3E%3Cpath%20fill%3D%22%23000%22%20d%3D%22M243.5%2041h9v6h-9z%22%2F%3E%3Cpath%20fill%3D%22%23000%22%20d%3D%22M245.5%2044l7-8v16z%22%2F%3E%3Cpath%20stroke%3D%22%23000%22%20d%3D%22M254.9487%2036.49083c2.994.84816%204.68394%202.50877%205.06981%204.98183.38587%202.47305.20052%204.52745-.55604%206.16321-1.036%201.6601-2.5406%203.05044-4.51376%204.17103%22%2F%3E%3Cpath%20fill%3D%22%23000%22%20d%3D%22M254.5%2041c1.30582.605%201.95873%201.49717%201.95873%202.67654%200%201.17937-.65291%202.28719-1.95873%203.32346v-6z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/ajzGRe)-->

The paragraph in the example above is to provide fallback content for user's that do not have browsers that support HTML5 audio.

Adding the `controls` attribute allows the browser to offer controls to the user for play/pause playback, increase/decrease volume buttons, and audio playback.


You can also add more songs via the `<source>` element.

Example 1:
```
<audio controls>
  <source src="one_song.mp3"
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
