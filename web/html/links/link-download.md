---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

aspects:
  - introduction

links:
  - '[HTML <a> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a){documentation}'

---
# Download Link
---
## Content

When links connect to web files or images, the page will navigate to that content and display accordingly. But when non-web files or images are linked, those files will be downloaded to the user's computer.  

Example of a non-web download link:
```html
<a href="enki.zip">
Download Zip
</a>
```
Result:

![link-download-zip](https://img.enkipro.com/d6367691bfa0e87ad84cb3dfea9e0903.png)

When web files and images are meant to be downloaded by the user, then the download attribute can be used to force that content to download just like a non-web file or image.   

Example of a web download link:
```html
<a
  href="summary.html"
  download="Today's%20Summary">
Download Web File
</a>
```
Result:

![link-download-web](https://img.enkipro.com/9c4fab090abeaf6fe0195135052edd4e.png)

When the download attribute has a value, it will rename the downloaded file. This can be useful when your file is named `123z12zv824.docx` on your server, but you want it downloaded with something more friendly like `Enki%20Notes.docx`. Keep in mind that `%20` needs to replace any spaces in the filename.

When the value within the download attribute is empty (like `download="">`, then the downloaded file will retain its original filename. Of course, since the file will be a local file for the user, they can always rename that file as they wish, too.

---
## Practice

Create a text link that downloads a web file and renames it with a more user-friendly filename.

```html
<??? ???="???"
  ???="???">
  Download File
<???>
````

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
