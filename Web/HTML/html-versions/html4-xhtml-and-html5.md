---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - obscura

---
# HTML4, XHTML, & HTML5
---
## Content

HTML, which stands for, **HyperText Markup Language** has had many versions over the years out of which, only a few are still being used today.
These are HTML5, HTML4 and XHTML. HTML4 is the oldest HTML version still in use.

HTML has a very loose syntax. A lot of closing tags are optional, for some you don't even need the open tag as well. This was good for new developers, however, it wasn't good in general, because not using proper syntax can cause your HTML to be read differently by different browsers. Because of this people combined HTML with XML(eXtensible Markup Language) and created XHTML.

XHTML, which stands for **eXtensible HyperText Markup Language** is basically HTML defined as XML. It is almost identical to HTML with stricter rules. 

Unlike in HTML, XHTML elements have to be properly nested, always be closed, written in lowercase, and can have only one root element.
Attributes in XHTML need quotation, cannot be used with minimization and require to be written in lowercase.

The `doctype` declaration also differs.

HTML5 Doctype declaration:
```
<!DOCTYPE html>
```

HTML4 and XHTML each have 3 types of Doctype declarations:
 - Frameset 
 - Strict
 - Transitional
 
HTML4 Frameset: 
```
<!DOCTYPE HTML PUBLIC 
 "-//W3C//DTD HTML 4.01 Frameset//EN" 
 "http://www.w3.org/TR/html4/frameset.dtd">
```

HTML4 Strict:
```
<!DOCTYPE HTML PUBLIC 
  "-//W3C//DTD HTML 4.01//EN" 
  "http://www.w3.org/TR/html4/strict.dtd">
```

HTML4 Transitional:
```
<!DOCTYPE HTML PUBLIC 
  "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd">
```

XHTML Frameset: 
```
<!DOCTYPE html PUBLIC 
  "-//W3C//DTD XHTML 1.0 Frameset//EN" 
  "http://www.w3.org/TR/xhtml1/DTD
  /xhtml1-frameset.dtd">
```

XHTML Strict:
```
<!DOCTYPE html PUBLIC 
  "-//W3C//DTD XHTML 1.0 Strict//EN" 
  "http://www.w3.org/TR/xhtml1/DTD
  /xhtml1-strict.dtd">
```

XHTML Transitional:
```
<!DOCTYPE html PUBLIC 
 "-//W3C//DTD XHTML 1.0 Transitional//EN" 
  "http://www.w3.org/TR/xhtml1/DTD
  /xhtml1-transitional.dtd">
```

A lot of elements from HTML4 were deprecated in HTML5. This means that those elements can be used to display HTML but are best edited using CSS. Some of those elements are `<basefont>`, `<center>`, `<font>` and `<strike>`.  The `<basefont>` and `<font>` elements were used to set the default font size and font styles for a web page or document. However, now there are many alternative CSS properties that should be used instead to achieve the same result. These are `font`, `font-family`, `font-size`, `font-style`, etc. The `<center>` element was used to center elements and the `<strike>` element was used to create a strikethrough text. Both of these are edited much easier and more precisely with CSS.

Additionally, HTML5 has many new features that HTML4 doesn't have. Some of these are:
  - audio and video for multimedia content
  - track to provide text tracks for the video element
  - embed for plugin content
  - new geolocation features

---
## Practice

Which version of HTML is the oldest still in use today?

???

 * HTML4
 * HTML5
 * HTML1
 * HTML2
 * HTML3

What does XHTML stand for?

???

 * eXtensible Hypertext Markup Language
 * eXtensive Hypertext Madeup Language
 * eXpressive Hypertype Markup Language
 * eXtensible Hypertext Markup Library
 
What is the main difference between HTML4 and XHTML?

???

 * all tags, once opened, must be closed in XHTML, but not in HTML4
 * all tags, once opened, must be closed in HTML4, but not in XHTML
 * all elements must be written in uppercase in XHTML, but not in HTML4
 * All attribute values have to be written in lowercase in HTML4, but not in XHTML

Which of these HTML elements were removed in HTML5?

???
???
???
???

 + `<basefont>`
 + `<center>`
 + `<font>`
 + `<strike>`
 - `<small>`
 - `<big>`
 - `<input>`
 - `<form>`

---
## Revision

All the tags used in XHTML are the same in HTML4.
Which of the following was not considered the biggest new features in HTML5?

???

HTML5 supports approx. 50% of of the presentational attributes that were in HTML4?

???
* 
* F (none - all using CSS)
* Play Videos without plugins
* Websites can locate user’s location.
* Create graphic using canvas

---
## Quiz

### Hey there, answer a quick question about HTML?

When referring to deprecated HTML tags, what does that mean?

???

 * HTML elements that are not supported by HTML and better handled using CSS.
 * HTML elements that are best used with certain features
 * HTML elements that will never be obsolete
 * HTML elements that are not appreciated enough
