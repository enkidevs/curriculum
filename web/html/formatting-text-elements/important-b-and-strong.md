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
# Important (b & strong)
---
## Content

The HTML `<b>`, or **The Bring Attention To element** is used to bring readers attention to some text and `<strong>`, or **The Strong Importance element**, is used to give importance to some content.

The `<b>` element was also formerly known as the **Boldface element**.

Example:
```
<p>
  <strong>Warning</strong>: 
  The latest 
  <b>iPhone</b> is expensive.
</p>
```
Result:

**Warning**: The latest **iPhone** is expensive.


The `<strong>` element is used to specify that some content is very important and serious. Like in the example above, `<strong>` is used to encapsulate the word `Warning`  and the `<b>` element is used to give attention to a text without giving it a higher importance, like the `iPhone` word. Also, you shouldn't use the `<b>` nor `<strong>` elements for styling purposes. If you want to style some content to be **bold**, you should use the `font-weight:bold;` CSS property or if the content is of higher importance, you should specify so by adding the `<strong>` element. On the other hand, if you need to *stress emphasis* on a word, you should use the `<em>` element.(more on this in later insights)
  
Both elements include the global attributes. If you wish to know more about global attributes, visit the more info section at the bottom of this insight.

The `<strong>` and `<b>` elements both have the same default styling, **bold**, and neither of them should be used just to turn some text **bold**!

Another example:
```
<strong>
  Attention!
</strong>
The floor is 
<b>slippery</b> 
 and <b>wet</b>!
```
Result:

**Attention!** The floor is **slippery** and **wet**!

---
## Practice

Write the code to properly express extra importance on key words in this sentence: 

`<p>`<???>Warning<???>: The latest <???>iPhone<???> is expensive.`</p>` 

* strong
* /strong
* b
* /b
* em
* /em
* i
* /i


---
## Revision

When text needs to bring users attention, you should use which element?

???

When a text needs to be presented with strong importance, seriousness, or urgency for its contents, you should use which element?

???

* `<b>`
* `<strong>`
* `<em>`
* `<i>`
* `<important>`

---
## QUIZ

### How much do you know about HTML text?

Write the code to properly express extra importance to key words : 

```
<h2>Things To Do</h2>
<ul>
  <li>
    <???>Do Now:<???> Call Mum
  </li>
  `<li>`Buy <???>Lord of the Flies<???>
      book`
   </li>`
  <li>
    Fix screen on
    <???>iPhone<???>
  </li>
</ul>
```

* strong
* /strong
* em
* /em
* b
* /b
* cite
* /cite
* i
* /i

