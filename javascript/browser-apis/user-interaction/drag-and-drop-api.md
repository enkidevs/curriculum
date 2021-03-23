---
author: tommarshall
type: normal
category: must-know
links:
  - >-
    [www.tutorialspoint.com](http://www.tutorialspoint.com/html5/html5_drag_drop.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Drag and Drop API


---

## Content

*Drag and Drop interfaces* allow applications to use drag and drop features in browsers. This means the user can select elements with their mouse, drag the elements to a droppable element, and drop the element by releasing the mouse button.

Before dragging and dropping, an elements attribute must be set so it's allowed to be dragged, and the *`ondragstart`* global event handler must be added.

```html
<div draggable="true"
 ondragstart="dragstart_handler(event);">
</div>
```

```javascript
function dragstart_handler(ev) {
  console.log("Start dragging...");
  ev.dataTransfer.setData("text/plain",
                          ev.target.id);
}
```


---

## Practice

Set the elements attribute so it's allowed to be dragged and at the start of the "drag" event, the `handler_function` would be triggered.

```html
<div ???="true"
   ???="handler_function(event);">
This is draggable
</div>
```

- `draggable`
- `ondragstart`
- `dragstart`
- `dragging`
- `drag`
- `todrag`
- `startdrag`


---

## Revision

What global event handler must be added to an element so that it can be dragged and dropped?

???

- `ondragstart`
- `draggable`
- `dragstart_handler`
- `dataTransfer`
- `dragAndDrop`
 
