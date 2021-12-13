---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [Global Attribute
    List](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Global Attributes 2


---

## Content

In the previous insight, we explained: `class`, `id`, `style` and `title`. In this one, we will cover `contenteditable`, `draggable`, `dropzone ` and `hidden`.

### contenteditable

The `contenteditable` attribute is used to specify whether the element's content is editable or not. There are two possible values; `true` and `false`.

The `true` value, which can also be an empty string, indicates the editable content.
The `false` value indicates that the content is not editable.

### draggable

The `draggable` attribute is used to indicate if an element is draggable with the `Drag and Drop API` and has two possible values; `true` and `false`.

The `true` value makes the element draggable.
The `false` value makes the element non-draggable.

### dropzone

The `dropzone` attribute also uses the `Drag and Drop API` and determines what type of content is dropped. There are three possible values; `copy`, `link` and `move`.

- `copy` indicates that the dropped content will be copied.
- `link` indicates that a link should be created for the dropped content.
- `move` indicates that the content dropped will be moved to this location.

### hidden

The `hidden` attribute is used to set some element, and its content as no longer valid and therefore hidden. This attribute should never be used on elements you want to show users.

```html
<h3 hidden>
  content invisible to the user
  <h3>
```


---

## Practice

Which of these is not a value for the `dropzone` attribute?

???

- auto
- copy
- link
- move


---

## Revision

Which 2 atributes use the same Drag and Drop APi?

???

- `dropzone and draggable`
- `contenteditable and draggable`
- `dropzone and hidden`
- `hidden and draggable`
- `contenteditable and hidden`
- `dropzone and contenteditable`
