---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: how to

links:

  - '[davidwalsh.name](https://davidwalsh.name/caret-end){website}'

---
# Move cursor at the end of text input

---
## Content

Here is how to define a JavaScript function to move a user's cursor to the end of an `input` or `textarea`.

```javascript
function moveCursorToEnd(el) {
  if(typeof el.selectionStart=="number"){
    el.selectionStart = 
      el.selectionEnd = 
        el.value.length;
    } else if (typeof el.createTextRange
 != "undefined"){
    el.focus();
    var range = el.createTextRange();
    range.collapse(false);
    range.select();
  }
}

```

Say a user is completing a feedback form and he has to switch tabs. When the user is back, the `textarea` will be out of focus. To continue writing, one must either click once after the last character in the field, or anywhere inside it and move the cursor to the end by himself.

As you want as many users to complete the feedback form, those 1-2 seconds spent on moving the cursor reduce the chances of the user submitting it.

An `onFocus` event handler can call the function for the particular input field.

---
## Revision

When moving the cursor to the end of the text input, passing element *e* to the move function, which values must be made equal to one another?

```javascript
e.selectionStart = e.??? = e.value.???;
```

* selectionEnd
* length
* selectionOver
* selectionFinish
* pos
* size