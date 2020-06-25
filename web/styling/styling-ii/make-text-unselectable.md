---
author: SeanWalters

levels:

  - basic

  - medium

type: normal

category: how to

aspects:
  - workout

tags:

  - NoSelection

links:

  - '[Disable Text Selection](http://stackoverflow.com/questions/826782/css-rule-to-disable-text-selection-highlighting){discussion}'
  - '[WebKit](http://caniuse.com/#search=webkit){website}'

---

# Make text unselectable

---
## Content

This is a method in CSS to make text in a web page unselectable.

```css
.noselect {
  user-select: none;
}
```

Once the class is assigned to a paragraph like below, the text will no longer be selectable.

```html
<p>
  Selectable text.
</p>
```
```html
<p class="noselect">
  Unselectable text.
</p>
```

---
## Practice

Complete the method which can be used to make text in a web page unselectable:

```
.unselectable {
  ???: none;
}
```

* `user-select`
* `selectable`
* `select`

---
## Revision

What does the following CSS code do?
```css
.noselect {
   user-select: none;
}

<p class="noselect">
   Hello, from Enki!
</p>
```

???

* It makes the contents of &lt;p&gt; unable to be selected.
* It makes the contents of &lt;p&gt; able to be selected.
* It changes the colour of &lt;p&gt;'s contents.
* It automatically highlights the contents of &lt;p&gt;.
