---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

---
# Target Link
---
## Content

When opening links in HTML, where the link opens is determined with the `target="value"` attribute.

Possible values for the `target` attribute:
 - _self     = Opens the link in the same tab or window
 - _top      = Opens the link in the full body of the window
 - _parent   = Opens the link in the parent frame
 - _blank    = Opens the link in a new tab or window
 - framename = Opens the link in a named frame

Example of opening the link in a different tab:
```
<a 
  href="https://www.enki.com/" 
  target="_blank"> 
  5 minute workouts 
</a> 
```

**Notes:**
  - **If no target is set, the linked page or document is opened in the current tab.**
  - **`_self` is only needed to open within the same tab/window when overriding conflicting code.**

---
## Practice

Create a link that will open the linked page within a new tab or browser window.

`<??? ???="http://enkipro.com" ???="???">`

Which of these is not a valid target value?

`<a href="http://enkipro.com" target="___">`

???

* a
* href
* target
* _blank
* `_new`
* src
* `_blank`
* `_parent`
* `_self`

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

???
   
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


