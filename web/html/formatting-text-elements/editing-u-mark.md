---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

aspects:
  - introduction

links:
  - '[HTML <u> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/u){documentation}'
  - '[HTML <mark> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/mark){documentation}'

---
# Markup for Editing
---
## Content

### Mark Text

The `<mark>`, or the **Mark Text** element, is used to specify that some text is marked or highlighted. The `<mark>` element is often used to indicate a part of the text of the document that is relevant to the user's search.

```html
<p>Highlight this
<mark>important</mark>
text in this paragraph.</p>
```
![editing-elements-mark](https://img.enkipro.com/55f1527201f294f0c317f4a3701727f3.png)

[View CodePen](https://codepen.io/enkidevs/pen/GBrJdP)

The text within the `<mark>` element is usually rendered with a yellow background, but the `background-color: yellow;` of the element can be changed using CSS.

Also, when `<mark>` is used within a `<q>` or `<blockquote>` element it indicates that that text is important even though it is not marked by the original author as important. This is like highlighting important text from a book with a marker/highlighter.


### Unarticulated Annotation

The `<u>`, or the **Unarticulated Annotation** element, is used to indicate that some text should be rendered differently from the rest of the text in a way that indicated non-textual annotation. The content of the `<u>` element is usually rendered as underlined. Nevertheless, you can change this by using the appropriate CSS styling - from this `text-decoration: underline;` to something like `text-decoration: #f00 wavy underline;`.

```html
<p>You could use this element
to highlight <u>speling</u>
mistakes, so the writer
can <u>corect</u> them.</p>
```

![editing-elements-u](https://img.enkipro.com/6c1c183ce8fda24a739e1c54523361d5.png)

[View CodePen](https://codepen.io/enkidevs/pen/OwWVBe)



**Note:** The `<u>` element used to be called the `Underline` element before when it was only used to underline text. If you wish to set some text as underline, you should not use the `<u>` element to style it but rather the appropriate CSS properties.

Also, when using the `<u>` element you should give it a different style than underlined because users may confuse them with hyperlinks.

The `<u>` element is often used to annotate spelling errors, proper nouns and/or names in Chinese, and other annotations.

---
## Practice

Underline the word "mispell":

```html
<p>
  Try not to
  <tag>mispell</tag>
  the word "misspell".
</p>
```

tag = ???

Highlight "100 laps" within the blockquote:

```html
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
