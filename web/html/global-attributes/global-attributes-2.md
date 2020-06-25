---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep

links:
  -  '[Global Attribute List](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){documentation}'
  
---
# Global Attributes 2
---
## Content
 
In the previous insight we explained: `class`, `id`, `style` and `title`. In this one, we will cover: `contenteditable`, `draggable`, `dropzone ` and `hidden`.


### contenteditable

The `contenteditable` attribute is used specify whether the content of the element is editable or not. There are 2 possible values; `true` and `false`.

The `true` value, can also be an empty string, indicates the content as editable.
The `false` value indicates that the content is not editable.

### draggable

The `draggable` attribute is used used to indicate if an element is draggable with the `Drag and Drop API` and has 2 possible values; `true` and `false`.

The `true` value makes the element draggable.
The `false` value makes the element non-draggable.

### dropzone

The `dropzone` attribute also used the `Drag and Drop API` and is used to determine what type of content is dropped. There are 3 possible values; `copy`, `link` and `move`.

The `copy` value indicates that the content dropped will be copied.
The `link` value indicates that a link should be created for the content dropped.
The `move` value indicates that the content dropped will be moved to this location.

### hidden

The `hidden` attribute is used set some element and its content as no longer valid/relevant and therefore hidden. This attribute should never be used on elements you want to show to the users.
```html
<h3 hidden>
  content invisible to the user
  <h3>
```

---
## Practice

Which of these is not a value for the `dropzone` attribute?

???

* auto
* copy
* link
* move

---
## Revision

Which 2 atributes use the same Drag and Drop APi?

???

* `dropzone` and `draggable`
* `contenteditable` and `draggable`
* `dropzone` and `hidden`
* `hidden` and `draggable`
* `contenteditable` and `hidden`
* `dropzone` and `contenteditable`

