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

When links connect to web files or images, the page will navigate to that content and display accordingly. But when non-web files or images are linked, those files will be downloaded to the user's computer.  
 
Example of a non-web download link:
```
<a href="enki.zip">
Download Zip
</a>
```
Result:

![link-download-zip](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%230001EE%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3EDownload%20Zip%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%230001EE%22%20stroke-linecap%3D%22square%22%20d%3D%22M20.5%2034.5h97%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

When web files and images are meant to be downloaded by the user, then the download attribute can be used to force that content to download just like a non-web file or image. 

Example of a web download link:
```
<a 
  href="summary.html" 
  download="Today's%20Summary"> 
Download Web File 
</a>
```
Result:

![link-download-web](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%230001EE%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3EDownload%20Web%20File%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%230001EE%22%20stroke-linecap%3D%22square%22%20d%3D%22M20.5%2034.5h137%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

When the download attribute has a value, it will rename the downloaded file. This can be useful when your file is named `123z12zv824.docx` on your server, but you want it downloaded with something more friendly like `Enki%20Notes.docx`. Keep in mind that `%20` needs to replace any spaces in the filename.

When the value within the download attribute is empty (like `download="">`, then the downloaded file will retain it's original filename. Of course, since the file will be a local file for the user, they can always rename that file as they wish, too. 

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


