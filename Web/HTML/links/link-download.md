---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

links:
  - '[MDN docs for anchor](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a){website}'

---
# Download Link
---
## Content

In HTML, you can create a text link which when clicked downloads either a web or a non-web file or image.

Example of a web download link:
```
<a 
  href="somefile.docx" 
  download=""> 
Download file here 
</a>
```
Result:
```
Download file here
```

Example of a non-web download link:
```
<a 
  href="enki.zip">
Download File
</a>
```
Result:
```
Download File
```

Furthermore, if for instance, your file is named `123z12zv824.docx` on your server, but you want it downloaded under a different name like `enki-app.docx`, you can do that easily by adding a value in the quotations after the `download=""` attribute.

Same web file example only this time the file is renamed to `enki-app.docx`:
```
<a 
  href="123z12zv824.docx" 
  download="enki-app.docx"> 
Download file here 
</a>
```
Result:
```
Download file here
```

Although you renamed the file to `enki-app.docx`, the user can still choose to rename it differently.

---
## Practice

Create a text link that downloads a web file and renames it with a more user-friendly filename.

`<??? ???="???" ???="">Email Me<???>`

* a
* href
* file-324.doc
* download
* Friendly File.doc
* /a
* rename
* doc
* src

---
## Revision

What code is used to create a link that when clicked will download...
a) a non-web file: ???
b) a web file: ???

* `<a href="enki.zip">Download File</a>`
* `<a href="enki.jpg" download>Download Image</a>`
* `<a href="enki.png">Download File</a>`
* `<a src="enki.png">Download File</a>`
* `<a src="enki.jpg">Download Image</a>`
* `<a href="enki.jpg download">Download File</a>`

---
## Quiz

### How much do you know about downloadable files in HTML?

If the actual filename is “file-32467E34.doc” and we want the user to download the file as “Enki Report.doc”, what code is used rename that downloaded file?

???

* `<a href="file-32467E34.doc" download="Enki%20Report.doc"></a>`
* `<a href="file-32467E34.doc" download="Enki Report.doc"></a>`
* `<a href="file-32467E34.doc" rename="Enki%20Report.doc"></a>`
* `<a href="file-32467E34.doc" doc="Enki%20Report.doc"></a>`
* `<a href="Enki Report.doc" src="file-32467E34.doc"></a>`


