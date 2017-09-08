# FileReader.readAsDataURL()
author: tommarshall

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: must-know

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsDataURL){website}

---
## Content

The `readAsDataURL()` method is used with file or blob objects. When the read operation is complete it returns a *data URL* with the files contents as base64 encoded string which can be access through `reader.result`.

This functionality is often used to create thumbnail previews of uploaded image files.

The HTML:
```html
<input type="file" id="file"
  onchange="triggerRead()"
  style="display:block">
<img src="" id="wallpaper">
```
And the JavaScript:
```JavaScript
function triggerRead() {
  var wallpaper =
    document.getElementById('wallpaper');
  var file = document.getElementById('file')
    .files[0];
  var reader  = new FileReader();

  reader.onload = function(e) {
    wallpaper.src = reader.result;
  }

  if(file) {
    reader.readAsDataURL(file);
  }
}
```

---
## Practice

Which FileReader's function is called after `readAsDataURL()` is completed?

???

* `onload`
* `onend`
* `oncomplete`
* `readAsDataURL`

---
## Revision

The URL returned by the `readAsDataURL` function is

???

* a base64 encoded string
* an SVG's code
* a link to file's location
