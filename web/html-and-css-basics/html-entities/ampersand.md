---

author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.markup-text.2: 10

aspects:
  - introduction
  - workout
  - deep

---

# Ampersand

---
## Content

Some characters in HTML are reserved.  To display these characters you must replace them with character entities.

Character entities are case sensitive and are also used to display characters not present on the keyboard.

An ampersand or the "and" symbol is one of those reserved characters.

To display the ampersand symbol, you can use either the HTML entity *number* or the entity *name*.

HTML Entity Number
```
&#38;
```
Result:
```
&
```

HTML Entity Name
```
&amp;
```
Result:
```
&
```

Example:
```
<p>Get AT&amp;T free first 3 months!</p>
```
Result:
```
Get AT&T free first 3 months!
```

---
## Practice

What does the "&amp;" character entity display in this line of code?

`<p>The symbol "&amp;" should be pretty easy to recognize.</p>`

???

* &
* *
* '
* ^
* @

---
## Revision

What HTML character entity is used to insert an ampersand symbol ("&")?

???

* &amp;
* &&;
* &current;
* &;
* &ampersand;

---
## Quiz

### How much do you know about HTML character entities?

If you have a webpage called “black&white”, what character entity is best to use in the following URL:

`<a href="?page=black???white&action=view">Link to B/W</a>`

* &amp;
* &
* %20
* &and
* %a2
