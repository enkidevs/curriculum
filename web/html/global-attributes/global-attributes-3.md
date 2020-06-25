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
# Global Attributes 3
---
## Content
 
In the previous insight we explained: `contenteditable`, `draggable`, `dropzone ` and `hidden`.  In this one, we will cover: `autocapitalize`, `dir`, `lang`, `spellcheck` and `translate`.

### autocapitalize

The `autocapitalize` attribute is used to set the automatic capitalization of letters and has 4 possible values; `off` or `none`, `on` or `sentences`, `words` and `characters`.
  
1. The `off`/`none` value sets the default for all letter to lowercase.
2. The `on`/`sentences` value sets the first letter of each sentence as capitalized.
3. The `words` value sets the first letter of every word as capitalized.
4. The `characters` value sets every letter as capitalized.

### dir

The `dir` attribute is used to set the direction of text and has 3 possible values; `ltr`, `rtl` and `auto`.

1. The `ltr` value is used for any language that is written left-to-right.
2. The `rtl` value is used for any language that is written right-to-left.
3. The `auto` value is used to give the user agent the option to decide which way of writing to use.

### lang

The `lang` attribute is used to define the language of the element.
Example:
```html
<p lang="es">
  ¿Cómo estás?
</p>
```

### spellcheck

The `spellcheck` attribute is used to indicate if an elements content should be spellchecked and has 2 possible values; `true` and `false`.

The `true` value states that the element should be checked for spelling errors.
The `false` value states that the element should not be checked for spelling errors.

### translate

The `translate` attribute is used to indicate if an element and its content should be translated. This attribute has 2 possible values; `yes` and `no`.

The `"yes"` value(which can also be an empty string,`""`) says the content should be translated.
The `"no"` value says the content should not be translated.

**Note:** The attribute does not immediately translate the element but rather specifies if it should or should not translate when the user translates the page.
Example:
```html
<p translate="no">
  Contents of this paragraph
  won't translate.
  </p>
```

---
## Practice

Attribute used to set the language of an element: ???

Attribute used for translating an element's content to another language: ???

Attribute used for setting the direction of text: ???

Attribute used for autocapitalization: ???


* lang
* translate
* dir
* autocapitalize
* language
* translatetext
* direction
* capitalize

