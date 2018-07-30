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
  - '[CodePen: Link in Existing Tab](https://codepen.io/enkidevs/pen/yqbBBG){code}'
  - '[CodePen: Link in New Tab](https://codepen.io/enkidevs/pen/jpmNbe){code}'
  
---
# Target Link
---
## Content

Typically, a link will open another page within it's own window. This is because the default value for the target (or where the content should open) has the value of `_self`. 

Typical link:
```
<a 
  href="https://www.enki.com/"> 
  Links opens within existing window. 
</a> 
```

Link with default value displayed: 
```
<a 
  href="https://www.enki.com/" 
  target="_self"> 
  Links opens within existing window. 
</a> 
```

<!--[View CodePen](https://codepen.io/enkidevs/pen/OwmLVz)-->

The other values for the target are `target="value"`:

 - _self     = (Default) Opens the link in the same tab 
 - _blank    = Opens the link in a new tab
 - _top      = Opens the link in the full body of the window
 - _parent   = Opens the link in the parent frame
 - framename = Opens the link in a named frame

Example of opening the link in a different tab:
```
<a 
  href="https://www.enki.com/" 
  target="_blank"> 
  Links opens within new tab.
</a> 
```

<!--[View CodePen](https://codepen.io/enkidevs/pen/jpmNbe)-->


** Note:** `_self` is only needed to open within the same tab/window when overriding conflicting code.

---
## Practice

Create a link that will open the linked page within a new tab or browser window.

`<??? ???="http://enki.com" ???="???">`

Which of these is not a valid target value?

`<a href="http://enki.com" target="___">`

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

* `<a href="http://enki.com">`
* `<a href="http://enki.com" target="_blank">`
* `<a href="http://enki.com" target="_same">`
* `<a href="http://enki.com" target="tab">`

---
## Quiz

### How much do you know about the HTML `target=""` attribute?

Why is it rare to use this code: 
`<a href="http://enki.com" target="_self">`

???
   
* _self is only needed to open within the same tab when overriding conflicting code. 
* It isn't common to allow users to download your entire webpage.
* The target="self" is typically used to download files like PDFs.
* Everyone already knows about Enki!

--- 
## Game

Play the game determining if the target values for links are valid or fake.

`<a href="http://enki.com" target="___">`

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


