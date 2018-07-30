---
author: shoutmatt

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

links:
  - '[CodePen: Element dfn](https://codepen.io/enkidevs/pen/LBxpJo){code}'
  - '[CodePen: Element dfn & abbr](https://codepen.io/enkidevs/pen/ejgpQj){code}'

---
# Intro dfn
---
## Content

The HTML `<dfn>`, or the **Definition** element, is used to specify a term that's being defined within the `<p>`, `<section>` and/or `<dt>`/`<dd>` pairing elements. Also, the `<dfn>` element is usually used to indicate the first use of a term in a document.

```
<p>
  <dfn>Enki</dfn> is an app
  that provides daily workouts
  for your dev skills.
</p>
```

![element-dfn](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2278%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2278%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-size%3D%2216%22%20font-style%3D%22italic%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EEnki%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2249.32813%22%20y%3D%2234%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%3E%20is%20an%20app%20that%20provides%20daily%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%3Eworkouts%20for%20your%20dev%20skills.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)


**Note:** The `<dfn>` elements main purpose is to provide semantic meaning. Other than that, it has no special functionality.

Also, the `<dfn>` element has a `title` attribute. If the `title` attribute is present, the content of the `<dfn>` element, which is the value of the `title` attribute, has to be the term being defined and nothing else.

Furthermore, the `<dfn>` element can have the `<abbr>` element nested inside it. If the `<dfn>` element has a single `<abbr>` element with a `title` attribute nested inside it, then the value of the `<abbr>` elements `title` attribute is the term being defined.

Example with abbr:
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

Abbr Result:

![element-dfn-abbr](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22173%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22173%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-size%3D%2216%22%20font-style%3D%22italic%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EHTML%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2262.30469%22%20y%3D%2234%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%3E%20is%20the%20standard%20markup%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%3Elanguage%20for%20creating%20web%20pages.%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2220%22%20y%3D%2291%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%3E...%20later%20in%20the%20document...%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2220%22%20y%3D%22129%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%3EAfter%20a%20few%20hours%2C%20I%20was%20finally%20able%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%22148%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%3Eto%20understand%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22122.71094%22%20y%3D%22148%22%3EHTML%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22165.01563%22%20y%3D%22148%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%3E%20!%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23000%22%20stroke-dasharray%3D%221%202%22%20stroke-linecap%3D%22square%22%20d%3D%22M18.5%2036.5h45m58%20113.75h45%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)


---
## Practice

Which statement is true regarding the `<dfn>` element?

???

```
<p>
<dfn>Enki</dfn>
is an app providing daily workouts
for your dev skills.
</p>
```

* `<dft>` defines a term when it is being described.
* Useful to apply element each time term is referred.
* Common to use `<abbr>` with `<dfn>` for all abbreviation's expansion.

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
  <tag>
   <abbr title="Hypertext Markup Language">
    HTML
   </abbr>
  </tag>
  is the standard markup language
  for creating web pages.
</p>
```
tag: ???

* dfn
* abbr
* wbr
* desc
