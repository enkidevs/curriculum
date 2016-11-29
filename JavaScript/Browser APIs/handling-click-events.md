# Handling click events
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/31286257/how-to-check-the-click-is-single-or-double-in-javascript){website}

  - '[javascript.info](http://javascript.info/tutorial/mouse-events){website}'

---
## Content

JavaScript provides a way to handle different click events such as right clicks and double clicks.

Keep in mind that click events will also trigger some mouse events.

Click events supported in JavaScript:
- `click` : `mousedown` and `mouseup` events are also triggered before
- `contextmenu` : it's preceded by `mousedown` and succeded by `mouseup` 
- `dbclick` : triggers two complete `click`s before the double.

The order is consistent across all browsers except **IE<9** which skips second `click` on `dbclick`.

Add a listener to these events:
```javascript
myVar.addEventListener('click', 
myClickFunction, false);
myVar.addEventListener('dbclick', 
myDoubleClickFunction, false);
```
To handle both single clicks and double clicks **simultaneously** a timer (around `100 ms`) should be implemented. If after a click, another one is registered within this timer, the double click function should be called. Otherwise, the single click one should be.

---
## Practice

Add a listener to a `double click` event:

```javascript
myVar.???('???', myDoubleClickFunction, 
              false);
```
* `addEventListener`
* `dbclick`
* `addListener`
* `eventListener`
* `double-click`
* `double_click`
* `doubleclick`

---
## Revision

Add a listener to a `click` event:
```javascript
myVar.???(???,
  myCLickFunction, false);
```

*`addEventListener`
*`click`
*`dbclick`
*'addClickListener`
*`false`
*`contextmenu`