---
author: rosielowther
type: normal
category: feature
links:
  - '[ExifTool Library](http://www.sno.phy.queensu.ca/~phil/exiftool/){website}'
  - >-
    [Git Attributes Official
    Documentation](http://git-scm.com/book/en/v2/Customizing-Git-Git-Attributes){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Diff images using *ExifTool*


---

## Content

*ExifTool* can extract the metadata (EXIF) from image files and convert it into text.

Add this to your `.gitattributes` file:

```plain-text
*.png diff=exif
```

Configure git to use `exif`:

```bash
git config diff.exif.textconv exiftool
```

If you run `git diff` you will see changes in the metadata between the images, for example in their file sizes:

```plain-text
-File Size                     : 40 kB
+File Size                     : 50 kB
```

Note that `exiftool` may not be present on your machine. You can install it with your system package manager.


---

## Practice

`*.png diff=exif`  should be added to which file?

```plain-texxt
???
```

- .gitattributes
- .git/config
- .gitignore


---

## Revision

`ExifTool` can be used to ??? from a photo and convert it into text.

- extract metadata
- extract pixels
- extract color codes
