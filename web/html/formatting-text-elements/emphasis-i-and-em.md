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
  - '[CodePen: Element i](https://codepen.io/enkidevs/pen/MBJwMp){code}'
  - '[CodePen: Element em](https://codepen.io/enkidevs/pen/NBdGKG){code}'
  - '[CodePen: Elemente em Embedded](https://codepen.io/enkidevs/pen/GBrpgb){code}'
  - '[CodePen: Element em & i](https://codepen.io/enkidevs/pen/djNYYw){code}'
  - '[CodePen: Element cite](https://codepen.io/enkidevs/pen/GBrpoV){code}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

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

![element-i](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2278%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2278%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%20fill%3D%22%23000%22%3EIn%20French%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2289.5%22%20y%3D%2234%22%20fill%3D%22%23575757%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3EQuatre-vingt-dix-neuf%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22234.60938%22%20y%3D%2234%22%20fill%3D%22%23000%22%3E%20is%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%20fill%3D%22%23000%22%3E99%2C%20and%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2275.58594%22%20y%3D%2253%22%20fill%3D%22%23575757%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3ECent%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22107.85156%22%20y%3D%2253%22%20fill%3D%22%23000%22%3E%20is%20a%20100.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/MBJwMp)-->

The `<em>`, or the **Emphasis** element, is used to *stress emphasis* on a piece of text read by a person (or software).

Notice how the `<em>` element helps share how this example text should be read:

```
<p>
  This is <em>no doubt</em> the
  best steak I've ever had!
</p>
```

![element-em](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2278%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2278%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EThis%20is%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2270.54688%22%20y%3D%2234%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3Eno%20doubt%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22132.36719%22%20y%3D%2234%22%3E%20the%20best%20steak%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3EI%26apos%3Bve%20ever%20had!%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/NBdGKG)-->

Furthermore, the `<em>` element is a little different from the `<i>` element in that it can be nested with itself.

```
<p>
  He shouted, 
  "<em>
    I <em>am</em>
    a comedian!
   </em>"
</p>
```

![element-em-embedded](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2255%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2255%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2230%22%3EHe%20shouted%2C%20%26quot%3B%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22113.79688%22%20y%3D%2230%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3EI%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22122.01563%22%20y%3D%2230%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-size%3D%2220%22%20font-style%3D%22italic%22%3Eam%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22149.76953%22%20y%3D%2230%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3E%20a%20comedian!%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22239.15234%22%20y%3D%2230%22%3E%26quot%3B%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/GBrpgb)-->

This is good for expressing a greater degree of emphasis in a sentence. Also, by default nested `<em>` elements they will display the same. Nevertheless, you can use `em > em` in CSS to style nested `<em>` elements.

### Used Together

Additionally, the `<em>` and `<i>` elements can be used together.

EM & I Example:
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
EM & I Result:

![element-em-and-i](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2278%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2278%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EThe%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2250.79688%22%20y%3D%2234%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3EBlack%20Pearl%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22128.73438%22%20y%3D%2234%22%3E%20is%20an%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22170.28125%22%20y%3D%2234%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3Eamazing%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22230.05469%22%20y%3D%2234%22%3E%20name%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3Efor%20a%20pirate%20ship.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/djNYYw)-->


### Using with Cite

If you add the name of the movie where *Black Pearl* is from, you would do so with the `<cite>` element.
  
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

![element-cite](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2295%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2295%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3EThe%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2250.79688%22%20y%3D%2234%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3EBlack%20Pearl%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22128.73438%22%20y%3D%2234%22%3E%20from%20the%20movie%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22244.19531%22%20y%3D%2234%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3EThe%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3EPirates%20of%20the%20Caribbean%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22187.92188%22%20y%3D%2253%22%3E%20is%20an%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2272%22%20font-family%3D%22Roboto-Italic%2C%20Roboto%22%20font-style%3D%22italic%22%3Eamazing%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2279.77344%22%20y%3D%2272%22%3E%20name%20for%20a%20pirate%20ship.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/GBrpoV)-->

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


