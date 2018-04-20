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

HTML, which stands for, **Hyper Text Markup Language** has had many versions over the years, however only a few are still used.
These are HTML5, HTML4 and XHTML. HTML4 is the oldest HTML version still in use.

HTML has a very loose syntax. A lot of closing tags are optional, for some you don't even need the open tag as well. This was good for new developers, however it wasn't good in general, because not using proper syntax can cause your HTML to be read differently by different browsers. Because of this people combined HTML with XML(eXtensible Markup Language) and created XHTML.

XHTML, which stands for **eXtensible HyperText Markup Language** is basicaly HTML defined as XML. It is almost identical to HTML, however it has stricter rules. 

Unlike in HTML, XHTML elements have to be properly nested, always be closed, written in lowercase, and can have only one root element.
Attributes in XHTML need quotation, cannot be used with minimization and require to be written in lowercase.

The `doctype` declaration is also different.

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


---
## Practice

Which version of HTML is the oldest still in use today?

???

What does XHTML stand for?

???

What is the main difference between HTML4 and XHTML?

???

Which of these HTML elements were removed in HTML5?

???
???
???
???
???

When referring to deprecated HTML tags, what does that mean?

???

HTML5 uses an upgraded extension for form features found in HTML4 and it is called:

???

* HTML4
* eXtensible Hypertext Markup Language
* all tags, once opened, must be closed in XHTML, but not in HTML4
* <basefont>
* <big>
* <center>
* <font>
* <strike>
* HTML elements that are not supported by HTML and better handled using CSS.
* Web Forms 2


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
