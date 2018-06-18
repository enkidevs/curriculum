---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices){website}'


---

# MediaDevices.getUserMedia()

---
## Content

*MediaDevices.getUserMedia()* prompts a user for permission to use video/audio input devices such as webcams/microphones. 

If permission is provided then the promise returned is resolved with the *MediaStream* object. 

Standard syntax:
```javascript
navigator.mediaDevices.getUserMedia
                            (constraints)
.then(function(mediaStream) { ... })
.catch(function(error) { ... })
```

A full example getting and returning the *MediaStream* object, using the promise:
```javascript
var p = navigator.mediaDevices.
           getUserMedia({ audio: true, 
                          video: true });
```
You can do something with the video here.
```javascript
p.then(function(mediaStream) {
  var video = document.
              querySelector('video');
  video.src = window.URL.
              createObjectURL(mediaStream);
  video.onloadedmetadata = function(e) {
    // ...
  };
});
```
You always check for errors at the end.
```javascript
p.catch(function(err) { 
     console.log(err.name); 
}); 
```

---
## Practice

Get and return the MediaStream object using the promise below: 

```javascript
var p = navigator.???.???({
   audio: true,
   video: true
});
```


* `mediaDevices`
* `getUserMedia`
* `mediaStream`
* `navigator`
* `promise`
* `permission`

---
## Revision

If permission is provided, what is the
promise returned and resolved with? ???


* The MediaStream object.
* A permission object.
* A promise object.
* Constraints for the media device.

 
