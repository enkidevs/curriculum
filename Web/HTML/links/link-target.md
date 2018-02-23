# Target Link
author: matthew-leach

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

---
## Content

New content to go here. The author must be updated to match a valid Enki account.

---
## Practice

Create a link that will open the linked page within a new tab or browser window.

`<??? ???="http://enkipro.com" ???="???">`

* a
* href
* target
* _blank
* link
* src
* _new
* _tab

Which of these are valid target values?

`<a href="http://enkipro.com" target="___">`

+ `_blank`
+ `_parent`
+ `_self`
+ `_top`
- `_new`
- `_son`
- `_other`
- `_empty`

---
## Revision

Which line of code opens the linked page in the existing browser window?

???

* `<a href="http://enkipro.com">`
* `<a href="http://enkipro.com" target="_blank">`
* `<a href="http://enkipro.com" target="_same">`
* `<a href="http://enkipro.com" target="tab">`

---
## Quiz

Why is it rare to use this code: 
`<a href="http://enkipro.com" target="_self">`
   
* _self is only needed to open within the same tab/window when overriding conflicting code. 
* It isn't common to allow users to download your entire webpage.
* The target="self" is typically used to download files like PDFs.
* Everyone already knows about Enki!

--- 
## Game

Play the game determining if the target values for links are valid or fake.

`<a href="http://enkipro.com" target="___">`

Valid Target Values:Fake Target Values 

```false

_new
%exp
This is a fake target value.
%

_other
%exp
This is a fake target value.
%

_son
%exp
This is a fake target value.
%

_empty
%exp
This is a fake target value.
%
```

```true

_blank
%exp
_blank is valid and opens the linked file in a new window/tab.
%

_parent
%exp
_parent is valid and opens the linked file in the parent frame.
%

_self
%exp
_self is valid and opens the linked file in the same frame as it was clicked and is the default value.
%

_top
%exp
_top is valid and opens the linked file in the full body of the window.
%

framename
%exp
framename represents the name of a frame in the page, so it can be valid and opens the linked file within the named frame.
%

```


