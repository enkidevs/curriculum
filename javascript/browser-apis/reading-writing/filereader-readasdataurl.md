---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: feature

aspects:
  - introduction
  - workout
  - deep

links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsDataURL){website}'


---

# FileReader.readAsDataURL()

---
## Content

The `FileReader` is a global object that provides multuple methods to read the contents of a file stored on the user's computer.

Each method can convert a file into a specific format. 

The `readAsDataURL()` method is used to read the contents of a file and return a *data URL* that represents the contents of a file as a base64 encoded string.

> The data given to `readDataAsURL` can be a `File` or a `Blob` object. A `File` object is just a specific version of a `Blob` (it can be used anywhere a `Blob` can)

Here's an example of how we can use this to upload an image file from your computer and show it on a website:

```html
<!-- create a file selection input -->
<!-- when a file is selected, onFileSelected is called -->
<input 
  id="image-input"
  type="file"
  onchange="onFileSelected()"
  style="display:block"
>
<img src="" id="image-output">
```

And the JavaScript:

```javascript
function onFileSelected() {
  let file = document.getElementById("image-input").files[0];

  let reader = new FileReader();

  let wallpaper = document.getElementById("image-output");

  reader.onload = function () {
    wallpaper.src = reader.result;
  };

  if (file) {
    reader.readAsDataURL(file);
  }
}
```

---
## Practice

Which `FileReader`'s function is called after `readAsDataURL()` is completed?

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
 
