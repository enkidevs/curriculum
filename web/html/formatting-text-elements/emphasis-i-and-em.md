---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - introduction

aspects:
  - introduction

links:

---
# Italic & Emphasis
---
## Content

The HTML `<i>` and `<em>` elements appear very similar since they both have the same default CSS styling of `font-style: italic`. But they both have different purposes.

The `<i>` element, which stands for **Italic**, is used set a part of a text in a different tone. These parts of text may include:

  - Foreign language phrases
  - Fictional characters's thoughts
  - Technical terms
  - A Thought
  - A ship/plane name
  - Scientific names
  - Etc..

```html
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

![element-i](https://img.enkipro.com/aaca1a40714529182438865cc92394a1.png)

[View CodePen](https://codepen.io/enkidevs/pen/MBJwMp)

The `<em>`, or the **Emphasis** element, is used to *stress emphasis* on a piece of text read by a person (or software).

Notice how the `<em>` element helps share how this example text should be read:

```html
<p>
  This is <em>no doubt</em> the
  best steak I've ever had!
</p>
```

![element-em](https://img.enkipro.com/6a585d9da53c624b03225ec7a33fb093.png)

[View CodePen](https://codepen.io/enkidevs/pen/NBdGKG)

Furthermore, the `<em>` element is a little different from the `<i>` element in that it can be nested with itself.

```html
<p>
  He shouted,
  "<em>
    I <em>am</em>
    a comedian!
   </em>"
</p>
```

![element-em-embedded](https://img.enkipro.com/a410e16d5de810a07e5fea383600bf25.png)

[View CodePen](https://codepen.io/enkidevs/pen/GBrpgb)

This is good for expressing a greater degree of emphasis in a sentence. Also, by default nested `<em>` elements they will display the same. Nevertheless, you can use `em > em` in CSS to style nested `<em>` elements.

### Used Together

Additionally, the `<em>` and `<i>` elements can be used together.

EM & I Example:
```html
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
EM & I Result:

![element-em-and-i](https://img.enkipro.com/546f603fa4b9c2cacb6c1bab2ebff09d.png)

[View CodePen](https://codepen.io/enkidevs/pen/djNYYw)


### Using with Cite

If you add the name of the movie where *Black Pearl* is from, you would do so with the `<cite>` element.

```html
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

![element-cite](https://img.enkipro.com/0ad2d499d7b1a5af2c49ebf3839a48dd.png)

[View CodePen](https://codepen.io/enkidevs/pen/GBrpoV)

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
