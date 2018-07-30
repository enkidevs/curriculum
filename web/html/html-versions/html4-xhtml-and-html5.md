---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.metadata.4: 10

aspects:
  - introduction
  - workout
  - deep

links:
  - '[MDN docs for HTML](https://developer.mozilla.org/en-US/docs/Web/HTML){website}'
  - '[MDN docs for HTML5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5){website}'
  - '[W3 docs for HTML5 vs HTML4](https://www.w3.org/TR/html5-diff/){website}'

---
# HTML4, XHTML, & HTML5
---
## Content

HTML, which stands for, **HyperText Markup Language** has had many versions over the years out of which, only a few are still being used today. These are HTML5, HTML4 and XHTML. HTML4 is the oldest HTML version still in use.

HTML has a very loose syntax. A lot of closing tags are optional, for some you don't even need the open tag as well. This was good for new developers, however, it wasn't good in general, because not using proper syntax can cause your HTML to be read differently by different browsers. Because of this people combined HTML with XML(eXtensible Markup Language) and created XHTML.

XHTML, which stands for **eXtensible HyperText Markup Language** is basically HTML defined as XML. It is almost identical to HTML with stricter rules.

Unlike in HTML, XHTML elements have to be properly nested, always be closed, written in lowercase, and can have only one root element. Attributes in XHTML need quotation, cannot be used with minimization and require to be written in lowercase.

The `doctype` declaration also differs for each version.

HTML5 has 1 Doctype declaration:
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

A lot of elements from HTML4 were deprecated and made obsolete in HTML5. Deprecated means that even though these elements can be used to style how HTML is displayed, it's better to use CSS instead. Some of these deprecate HTML elements are `<basefont>`, `<center>`, `<font>` and `<strike>` and these were all used to style typography. 

Additionally, HTML5 has none of the presentational attributes which were used in HTML4. This is because handling those functionalities is much better with CSS.

Also, HTML5 has many new features that HTML4 doesn't have. Some of these are:
  - audio and video for multimedia content
  - track to provide text tracks for the video element
  - embed for plugin content
  - new geolocation features

---
## Practice

Which version of HTML is the oldest still in use today?

???

What does XHTML stand for?

???

What is the main difference between HTML4 and XHTML?

???

Which of these HTML elements was not removed in HTML5?

???

* HTML4
* eXtensible Hypertext Markup Language
* all tags, once opened, must be closed in XHTML, but not in HTML4
* `<form>`
* HTML2
* HTML3
* eXtensible Hypertext Markup Library
* all tags, once opened, must be closed in HTML4, but not in XHTML
* all elements must be written in uppercase in XHTML, but not in HTML4
* `<font>`
* `<strike>`


---
## Revision

Is this statement true?: HTML5 supports approx. 50% of the presentational attributes that were in HTML4?

???

* No because there are no presentational attributes from HTML4 that are supported in HTML5.
* No, because all presentational attributes from HTML4 are supported in HTML5.
* Yes.
* No, because presentational attributes only existed in HTML1.

---
## Quiz

### Test your HTML knowledge.

When referring to deprecated HTML tags, what does that mean?

???

* HTML elements which are no longer supported and are replaced with better and more functional CSS alternatives.
* HTML elements that are best used with certain features.
* HTML elements that will never be obsolete.
* HTML elements that are not appreciated enough.
