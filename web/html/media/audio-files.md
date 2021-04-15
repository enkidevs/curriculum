---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [MDN: <audio>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio){documentation}
  - >-
    [W3S: <audio>
    Element](https://www.w3schools.com/html/html5_audio.asp){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Audio Files


---

## Content

Previously, in order to support all browsers, it was useful to provide two different types of audio within your `<audio>` players: mp3/m4a & ogg.

However, that is no longer the case.

![all-audio-format-browsers](https://img.enkipro.com/f969fae6edd7f2063a66bf7cec803c63.png)

All browsers, except Internet Explorer, support these formats:

- WAV
- MP3
- M4A
- MP4
- OGG
- ADTS
- FLAC

Internet Explorer only supports MP3 and MP4 as of **IE9**.

These three are the most used formats:

**MP3**: The most popular audio format for its small compressed size and great audio.

**M4A**: The newest audio format works with all same browsers as MP3, but should be used moving forward.

**OGG**: Less popular than MP3/M4A, but its open-source and widely available and actually has greater compression due to its variable bit rate with the same great audio.

Using the `<audio>` tag, multiple songs can be added via the `<source>` element which will accommodate the appropriate file needed for that browser.

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

Which of these formats are not supported by all browsers ?

??? 

- .tunes & flash
- .mp3/.m4a & .ogg
- .mp4 & .wav


---

## Revision

When you want to provide fallback content for users that do not have browsers that support HTML5 audio, what do you need to do?

???

- `Add any content between the start and end <audio> tags.`
- CSS can be used to notify the user.
- Any browser, regardless of the version, can play HTML5 audio.
- Use the attribute "fallback" to provide the appropriate message.


---

## Quiz

### How much do you know about the HTML audio element?


How many audio files are useful to add to a single `<audio>` element in order to be supported on all major web browsers today?

???

- 1
- 2
- 3
- 4
- 5+
