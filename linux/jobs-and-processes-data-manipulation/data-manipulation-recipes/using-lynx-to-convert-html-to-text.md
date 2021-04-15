---
author: tuwidc
type: normal
category: hack
tags:
  - linux
  - terminal
  - browser
  - lynx
  - html
  - strip
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Using lynx to convert HTML to text


---

## Content

You can strip the text directly from a html file/content by using lynx

```bash
lynx -dump -stdin < file.html
```

```bash
cat file.html | lynx -dump -stdin
```

```bash
curl site | lynx -dump -stdin
```

For a HTML file:

```html
<!DOCTYPE HTML>
<html><body>
<p>This is a link<a
   href='http://enki.com'> to enki.
</a></p>
</body></html>
```

The output will look like:

```bash
  [1] This is a link to enki.

References
  1. http://enki.com

  
```

Lynx is a terminal-based browser that often proves useful for testing.


---

## Practice

Strip `index.html` file of tags using `lynx` :

```bash
??? ??? 
    ??? < index.html
```

- `lynx`
- `-dump`
- `-stdin`
- `-input`
- `stdout`


---

## Revision

You can dump the text from a html file to shell by using:

```bash
cat index.html | 
    ??? ??? ???
```

- `lynx`
- `-dump`
- `-stdin`
- `dump`
- `-stdout`
