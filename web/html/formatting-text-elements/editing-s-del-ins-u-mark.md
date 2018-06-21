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
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'
  - '[MDN docs for s](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/s){website}'
  - '[MDN docs for ins](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ins){website}'
  - '[MDN docs for del](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/del){website}'
  - '[MDN docs for u](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/u){website}'
  - '[MDN docs for mark](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/mark){website}'

---
# Editing (s, del, ins, u, mark)
---
## Content

The HTML `<s>`,  or **The Strikethrough Text element** is used to create a strikethrough in a text. This is usually used to specify that some text is no longer correct or relevant.

Example:
```
I have 40$ left in my account<br>
I have <s>40$</s> 35$ left in my account
```
Result:

I have 40$ left in my account

I have ~~40$~~ 35$ left in my account

**Notes:**
  **If you want to indicate a document edit, don't use the `<s>` element, you should use the `<del>` and/or `<ins>` elements instead.**
  **The `<s>`, as well as the `<del>`, `<ins>`, `<u>` and `<mark>` elements(mentioned below) all support global attributes. To know more about global attributes, visit the more info section at the bottom of this insight.**

Next, the `<del>`, or **The Deleted Text element** is used to specify that some text has been deleted and the `<ins>`, or **The Inserted Text element** is used to indicate that some text was inserted/added to the document.

Both elements have the same 2 element-specific attributes:
  1. `cite`
  2. `datetime`
  
The `cite` attribute is used to specify the URL which explains the change. 
The `datetime` attribute is used to indicate the time of the change and the date has to be properly specified(YYMMDD) otherwise it won't parse properly and the element won't have a time stamp.

The `<del>` element is usually rendered with strikethrough text, whereas the `<ins>` is usually rendered with underlined text. 

Nevertheless, how these elements are rendered depends on the browser.

Example:
```
<del><p>Old Text</p></del>
<ins><p>New Text</p></ins>
```
Result:

~~Old Text~~

New Text

Next, the `<mark>`, or **The Mark Text element** is used to specify that some text is marked or highlighted.

The text within the `<mark>` element is usually rendered with a yellow background.

The `<mark>` element is often used to indicate a part of the text of the document that is relevant to the user's search.

Also, when `<mark>` is used within a `<q>` or `<blockquote>` element it indicates that that text is important even though it is not marked by the original author as important. This is like highlighting important text from a book with a marker/highlighter.

Last but not least, the `<u>`, or **The Unarticulated Annotation element** is used to indicate that some text should be rendered differently from the rest of the text in a way that indicated non-textual annotation. On the other hand, if you want to render text with textual annotation, you should use the `<ruby>` element. (more on `<ruby>` in a different workout) 

The content of the `<u>` element is usually rendered as underlined. Nevertheless, you can change this by using the appropriate CSS styling. (`text-decoration; underline`)

**Note: The `<u>` element used to be called the `Underline` element before when it was only used to underline text. If you wish to set some text as underline, you should not use the `<u>` element to style it but rather the appropriate CSS properties.**

Also, when using the `<u>` element you should give it a different style than underlined because users may confuse them with hyperlinks.

The `<u>` element is often used to annotate spelling errors, proper nouns and/or names in Chinese, and other annotations.

---
## Practice

Cross out the text "$100": 

```
<p>
  Try and get flights under
  <tag>$100</tag> $200!
</p>
```

tag = ???

Display the first list item as deleted text.
Then display the third and fourth items as inserted text.

```
<ol>
 <li><tag1>Book flights</tag1></li>
 <li>Uber to airport</li>
 <li><tag2>Redeye 11:30pm.</tag2></li>
 <li><tag2>Sleep (if possible).</tag2></li>
</ol>
```

tag1 = ???
tag2 = ???

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


* s
* del
* ins
* u
* mark
* cross
* out
* insert
* delete
* d
* i
* under
* underline
* highlight
* high

---
## Revision

Match these elements with their meaning: 

???: defines text that is no longer correct, accurate or relevant.
???: defines text that is replaced or deleted text.
???: defines text that has been inserted.
???: defines text that should be styled differently than the rest of the text, such as misspelled words. 
???: defines text that should be highlighted.

* s
* del
* ins
* u
* mark
* strike
* delete
* cross
* highlight

---
## Quiz

### How much do you know about formatting text elements?

Mark the false statement: 

???

* The `<del>` tag defines elements that are being delayed during the start of an animation.
* Avoid using the `<u>` element where it can be confused with links. 
* It is best to use `<ins>` together with `<del>` to properly showcase text updates to a document. 
* The `<s>` element that defined strikethrough is used to represent text that is no longer correct. 
*  The `<s>` and `<del>` elements visually appear the same by default but have different semantic meaning. 


