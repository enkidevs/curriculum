---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

links:
  - '[MDN docs for dfn](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dfn){website}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'
  
---
# Intro dfn
---
## Content

The HTML `<dfn>`. or **The Definition element** is used to specify a term that's being defined within the `<p>`, `<section>` and/or `<dt>`/`<dd>` pairing elements. Also, the `<dfn>` element is usually used to indicate the first use of a term in a document.

Example:
```
<p>
  <dfn>Enki</dfn> is an app 
  that provides daily workouts
  for your dev skills.
</p>
```
Result:

_Enki_ is an app that provides daily workouts for your dev skills.


**Note: The `<dfn>` elements main purpose is to provide semantic meaning. Other than that, it has no special functionality.**

Also, the `<dfn>` element has a `title` attribute. If the `title` attribute is present, the content of the `<dfn>` element, which is the value of the `title` attribute, has to be the term being defined and nothing else. 

Furthermore, the `<dfn>` element can have the `<abbr>` element nested inside it. If the `<dfn>` element has a single `<abbr>` element with a `title` attribute nested inside it, then the value of the `<abbr>` elements `title` attribute is the term being defined.

Example `<abbr>`:
```
<p>
  <dfn>
   <abbr 
    title="Hypertext Markup Language">
   HTML
   </abbr>
  </dfn> 
  is the standard markup language 
  for creating web pages.
</p>
<p>... later in the document...</p>
<p>
  After a few hours, 
  I was finally able to understand 
  <abbr 
   title="Hypertext Markup Language">
   HTML
  </abbr>
  !
</p>
```
Result:

_HTML_ is the standard markup language for creating web pages.

... later in the document...

After a few hours, I was finally able to understand _HTML_!

**Note: The `<dfn>` element supports global attributes. More on `global attributes` in the more info section at the bottom of this insight.**

If you add the global `id` attribute to the `<dfn>` element, you can use that id to link to it with an anchor(`<a>`) element.

Example with anchor:
```
<p> 
  <strong>
    Hypertext Markup Language
  </strong>
  (<strong>
    <dfn id="html-definition">
      HTML
    </dfn>
   </strong>)
  is the standard markup language
  for creating web pages.
</p>

<p>
  ...later in the document...
</p>

<p>
  After a few hours, 
  I was finally able to understand 
  <a href="#html-definition">
    HTML
  </a>
  !
</p>
```
Result:

**Hypertext Markup Language** (__*HTML*__) is the standard markup language for creating web pages.

...later in the document...

After a few hours, I was finally able to understand [HTML](#)!

---
## Practice

Mark the true statement regarding the `<dfn>` element.

```
<p>
  <dfn>Enki</dfn> is an app 
  that provides daily workouts
  for your dev skills.
</p>
```

???

* `<dfn>` defines a term when it is being described.
* Useful to apply element each time term is referred. 
* Common to use `<abbr>` with `<dfn>` for all abbreviation's expansion.
* The `<dfn>` element only works with the `<a>` element.

---
## Revision

Which HTML element is used to indicate the first use of a term in a document?

???

* dfn
* dir
* item
* id
* term

---
## Quiz

### How much do you know about formatting text elements?

From the following code, match the proper HTML elements with the tags: 

```
<p>
  <tag1>
   <tag2 
    title="Hypertext Markup Language">
   HTML
   </tag2>
  </tag1> 
  is the standard markup language 
  for creating web pages.
</p>
<p>... later in the document...</p>
<p>
  After a few hours, 
  I was finally able to understand 
  <tag2 
   title="Hypertext Markup Language">
   HTML
  </tag2>
  !
</p>
```

tag1: ???
tag2: ???

* dfn
* abbr
* wbr
* desc
* id
* term
