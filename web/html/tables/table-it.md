---
author: stefan.stojanovic

levels:

  - beginner

  - basic

  - medium


tags:

  - introduction

  - workout


type: tetris

category: 'feature'

standards:
  web.syntax-html.1: 1000
  web.layout-html.1: 1000

links:
  - '[MDN Docs for The Table element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table){documentation}'
  - '[MDN docs for The Table Row element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tr){documentation}'
  - '[MDN docs for The Table Data element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td){documentation}'
  - '[MDN docs for Global Attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){documentation}'

---
# Table It
---

## Content

Play the game determining which attribute is deprecated or obsolete and which is still in use:

For `<table>` and `<tr>`, which attributes are valid, and not deprecated?

---
## Game Content
Valid Attributes:Deprecated Attributes

```true

rowspan
%exp
rowspan is a valid td attribute
%

colspan
%exp
colspan is a valid td attribute
%

style
%exp
style is a valid global attribute
%

id
%exp
id is a valid global attribute
%

lang
%exp
lang is a valid global attribute
%

headers
%exp
headers is a valid global attribute
%
```

```false

align
%exp
This is a deprecated attribute
%

bgcolor
%exp
This is a deprecated attribute
%

border
%exp
This is a deprecated attribute
%

cellpadding
%exp
This is a deprecated attribute
%

rules
%exp
This is a deprecated attribute
%

width
%exp
This is a deprecated attribute
%

```
