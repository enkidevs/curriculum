---
author: catalin
type: normal
category: tip
links:
  - >-
    [How to check the click is single or double in javascript](https://stackoverflow.com/questions/31286257/how-to-check-the-click-is-single-or-double-in-javascript){website}
  - >-
    [Mouse events](https://javascript.info/mouse-events-basics){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Handling click events


---

## Content

JavaScript provides a way to handle different click events such as right clicks and double clicks.

Keep in mind that click events will also trigger some mouse events.

Click events supported in JavaScript:

- `click` : `mousedown` and `mouseup` events are also triggered before
- `contextmenu` : it's preceded by `mousedown` and succeded by `mouseup`
- `dblclick` : triggers two complete `click`s before the double.

The order is consistent across all browsers except **IE<9** which skips second `click` on `dblclick`.

Add a listener to these events:

```javascript
myVar.addEventListener('click',
myClickFunction);
myVar.addEventListener('dblclick',
myDoubleClickFunction);
```

To handle both single clicks and double clicks **simultaneously** a timer (around `100 ms`) should be implemented. If after a click another one is registered within the time frame, the double click function is called. Otherwise, the single click function is called.


---

## Practice

Add a listener to a `double click` event:

```javascript
myVar.???('???', myDoubleClickFunction);
```

- `addEventListener`
- `dblclick`
- `addListener`
- `eventListener`
- `double-click`
- `double_click`
- `doubleclick`


---

## Revision

Add a listener to a `click` event:

```javascript
myVar.???(???,
  myCLickFunction);
```

- `addEventListener`
- `click`
- `dblclick`
- `addClickListener`
- `false`
- `contextmenu`
 
