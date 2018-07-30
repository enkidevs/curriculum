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
  - '[CodePen: mark Element](https://codepen.io/enkidevs/pen/GBrJdP){code}'
  - '[CodePen: u Element ](https://codepen.io/enkidevs/pen/OwWVBe){code}'
  - '[MDN docs for u](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/u){website}'
  - '[MDN docs for mark](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/mark){website}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Markup for Editing
---
## Content

### Mark Text

The `<mark>`, or the **Mark Text** element, is used to specify that some text is marked or highlighted. The `<mark>` element is often used to indicate a part of the text of the document that is relevant to the user's search.

```
<p>Highlight this
<mark>important</mark>
text in this paragraph.</p>
```
![editing-elements-mark](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2276%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2276%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFFF02%22%20d%3D%22M117%2021h71v17h-71z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EHighlight%20this%20important%20text%20in%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3Ethis%20paragraph.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/GBrJdP)-->

The text within the `<mark>` element is usually rendered with a yellow background, but the `background-color: yellow;` of the element can be changed using CSS.

Also, when `<mark>` is used within a `<q>` or `<blockquote>` element it indicates that that text is important even though it is not marked by the original author as important. This is like highlighting important text from a book with a marker/highlighter.


### Unarticulated Annotation

The `<u>`, or the **Unarticulated Annotation** element, is used to indicate that some text should be rendered differently from the rest of the text in a way that indicated non-textual annotation. The content of the `<u>` element is usually rendered as underlined. Nevertheless, you can change this by using the appropriate CSS styling - from this `text-decoration: underline;` to something like `text-decoration: #f00 wavy underline;`.

```
<p>You could use this element
to highlight <u>speling</u>
mistakes, so the writer
can <u>corect</u> them.</p>
```

![editing-elements-u](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2294%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2294%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20stroke%3D%22%23FF1018%22%20d%3D%22M94%2076.5c-.23565%202.0467.59768%202.71337%202.5%202%202.85347-1.07005%202.37848-5%205-5s2.5%205%205%205%202.37152-5%205-5%202.37848%205%205%205%203.25284-5%205.5-5%202.5%205%205%205%202.81456-5%205.5-5%202.68544%204.62441%204%205c.87638.2504%201.87638-.7496%203-3M88%2057.5c-.23565%202.0467.59768%202.71337%202.5%202%202.85347-1.07005%202.37848-5%205-5s3%205%205.5%205%202.37152-5%205-5%203.359%205%205.98052%205c2.62152%200%202.27232-5%204.51948-5%202.24716%200%203%205%205.5%205s2.81456-5%205.5-5%203.68544%204.62441%205%205c.87638.2504%202.2097-.91627%204-3.5%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EYou%20could%20use%20this%20element%20to%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3Ehighlight%20speling%20mistakes%2C%20so%20the%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2272%22%3Ewriter%20can%20corect%20them.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/OwWVBe)-->



**Note:** The `<u>` element used to be called the `Underline` element before when it was only used to underline text. If you wish to set some text as underline, you should not use the `<u>` element to style it but rather the appropriate CSS properties.

Also, when using the `<u>` element you should give it a different style than underlined because users may confuse them with hyperlinks.

The `<u>` element is often used to annotate spelling errors, proper nouns and/or names in Chinese, and other annotations.

---
## Practice

Underline the word "mispell":

```
<p>
  Try not to
  <tag>mispell</tag>
  the word "misspell".
</p>
```

tag = ???

Highlight "100 laps" within the blockquote:

```
<blockquote>
<p>
  "I just ran
  <tag>100 laps</tag>
  and I'm not even tired."
</p>
<cite>Bobby the Kid</cite>
</blockquote>
<p>
  What Bobby the Kid doesn't share
  is that a lap around that tree
  is only 10 feet.
</p>
```

tag = ???

* u
* mark
* cross
* out
* under
* underline
* highlight
* high

---
## Revision

Match these elements with their meaning:

???: defines text that should be styled differently than the rest of the text, such as misspelled words.
???: defines text that should be highlighted.

* u
* mark
* strike
* delete
* cross
* highlight
