---
author: tommarshall
type: normal
category: feature
links:
  - >-
    [FileReader.readAsDataURL()](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsDataURL){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# FileReader.readAsDataURL()


---

## Content

The `FileReader` is a global object that provides multiple methods to read the contents of a file stored on the user's computer.

Each method can convert a file into a specific format. 

The `readAsDataURL()` method is used to read the contents of a file and return a *data URL* that represents the contents as a [base64 encoded](https://enki.com/glossary/general/base64-encoding) string.

> The data given to `readDataAsURL` can be a `File` or a `Blob` object. A `File` object is just a specific version of a `Blob` (it can be used anywhere a `Blob` can)

Here's an example of how we can use this to upload an image file from your computer and show it on a website:

> The trick in the code below is that `Image` element source property `src` supports base64 encoded values

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
  let file = document.getElementById(
    "image-input"
  ).files[ 0 ];

  let reader = new FileReader();

  let wallpaper = document.getElementById(
    "image-output"
  );

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

- `onload`
- `onend`
- `oncomplete`
- `readAsDataURL`


---

## Revision

The URL returned by the `readAsDataURL` function is

???

- a base64 encoded string
- an SVG's code
- a link to file's location
 
