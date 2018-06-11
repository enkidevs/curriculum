---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - introduction

links:
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Emphasis (i & em)
---
## Content

The HTML `<i>` element is used set a part of a text in a different tone and the `<em>`, or **The Emphasis element** is used to *stress emphasis* on a piece of text read by a person (or software).

Both of these elements have the same default styling; `font-style: italic`. Nevertheless, each element has its purpose and neither of these elements should be used only to style some text *italic*. If you want your text italic, you should set it with the appropriate CSS property.

Both elements only support global attributes. More on global attributes in the `more info` section at the bottom of this insight.


The `<i>` element is used for numerous things:
  - Foreign language phrases
  - Fictional characters's thoughts
  - Technical terms
  - A Thought
  - A ship/plane name
  - Scientific names
  - Etc..

Example of `<i>`:
```
<p>
  In French 
  <i class="french">
    Quatre-vingt-dix-neuf
  </i>
  is 99, and
  <i class="french">
  Cent
  </i>
  is a 100.
</p>
```
Result:

In French *Quatre-vingt-dix-neuf* is 99, and *Cent* is 100.

And the `<em>` element is used to *stress emphasis* to a word or words of a text.

Example
```
<p>
  This is 
  <em>no doubt</em> 
  best steak I've ever had!
```
Result:

This is *no doubt* the best steak I've ever had!

Furthermore, the `<em>` element can be nested with itself.

Example:
```
<p>
  He shouted, 
  "<em>
    I <em>am</em>
    a comedian!
   </em>"
</p>
```
Result:

He shouted, "*I *am* a comedian!*"

This is good for expressing a greater degree of emphasis in a sentence. Also, by default nested `<em>` elements they will display the same. Nevertheless, you can use `em > em` in CSS to style nested `<em>` elements.

Additionally, the `<em>` and `<i>` elements can be used together.

Example:
```
<p>
  The 
  <i>
    Black Pearl
  </i> 
  is an 
  <em>
    amazing
  </em>
  name for a pirate ship.
</p>
```
Result:

The *Black Pearl* is an *amazing* name for a pirate ship.

**Note!**
  If you add the name of the movie where *Black Pearl* is from, you would do so with the `<cite>` element.
  
Example:
```
<p>
  The 
  <i>
    Black Pearl
  </i> 
  from the movie 
  <cite>
    The Pirates of the Caribbean
  </cite>
  is an 
  <em>
    amazing
  </em>
  name for a pirate ship.
</p>
```
Result:

The *Black Pearl* from the movie *The Pirates of the Caribbean* is an *amazing* name for a pirate ship.


---
## Practice

Write the code to properly express emphasis in this sentence: 

`<p>`The <???>Black Pearl<???> is an <???>amazing<???> name for a pirate ship.`</p>` 

Mark the false statement about the `<em>` element.

`<p>`He shouted, "`<em>`I `<em>`am`</em>` a comedian!`</em>`"`</p>`

???

* `i`
* `/i`
* `em`
* `/em`
* Nested `<em>`s will appear in CAPS by default.
* `strong`
* `/strong`
* Greater degree of emphasis is made on nested `<em>`s. 
* `em > em` in CSS will style nested `<em>` elements.
* `<em>`s and nested `<em>`s will display the exact same by default. 

---
## Revision

When text is being read by a person (or software) to add emphasis to the pronunciation, use: ???

When emphasis is needed for a foreign word, a fictional character's thoughts, or when the text refers to the definition of a word instead of representing its semantic meaning, use: ???

* `<em>`
* `<i>`
* `<important>`
* `<b>`
* `<strong>`

---
## Quiz

### How much do you know about HTML text?

Write the code to properly express emphasis in this sentence: 

`<p>`The <???>Black Pearl<???> from the movie <???>The Pirates of the Caribbean<???> is an <???>amazing<???> name for a pirate ship.`</p>` 

* i
* /i
* cite
* /cite
* em
* /em
* strong
* /strong


