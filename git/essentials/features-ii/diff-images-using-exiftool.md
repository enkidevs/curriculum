---
author: rosielowther

levels:

  - advanced

  - medium

type: normal

category: feature

aspects:
  
  - workout
  - deep
  

links:

  - '[ExifTool Library](http://www.sno.phy.queensu.ca/~phil/exiftool/){website}'
  - '[Git Attributes Official Documentation](http://git-scm.com/book/en/v2/Customizing-Git-Git-Attributes){website}'


---

# Diff images using *ExifTool*

---
## Content

*ExifTool* can extract the metadata (EXIF) from image files and convert it into text.

Add this to your `.gitattributes` file:
```
*.png diff=exif
```
Configure git to use `exif`:
```
$ git config diff.exif.textconv exiftool
```
If you run `git diff` you will see changes in the metadata between the images, for example in their file sizes:
```
-File Size                     : 40 kB
+File Size                     : 50 kB
```

Note that `exiftool` may not be present on your machine. You can install it with your system package manager.

---
## Practice

`*.png diff=exif`  should be added to

??? file.

* .gitattributes
* .git/config
* .gitignore

---
## Revision

`ExifTool` can be used to ??? from a photo and convert it into text.


* extract metadata
* extract pixels
* extract color codes

 
