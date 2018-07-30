---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.3: 10
  web.syntax-html.4: 10
  web.syntax-html.5: 10

aspects:
  - introduction

links:
  - '[w3 documents on all Optional Elements](https://www.w3.org/TR/html5/syntax.html#optional-tags){website}'
  - '[Google docs for Optional Elements](https://google.github.io/styleguide/htmlcssguide.html#Optional_Tags){website}'

---
# Optional Elements
---
## Content

In HTML5, there is actually a lot of optional tags where either the starting, ending, or both tags can be omitted. It can be a little usual working with optional tags because just because an element's tag is omitted, it doesn't mean the element itself is not present at all. It means that it is implied and is there no matter if the markup code doesn't contain the typical tags.

Some optional elements:
  - `<html>`
  - `<head>`
  - `<body>`
  - `<p>`'s closing tag.

Although this isn't a very common practice, Google's HTML styleguide recommends that optional tags be used to help cut down on the file size and improve the scannability of the document. They also recommend that developers not pick some optional tags and omit others as consistency is important in avoiding simple mistakes.

```
<!-- Google: Not recommended -->
<!DOCTYPE html>
<html>
  <head>
    <title>Spending money,
    spending bytes</title>
  </head>
  <body>
    <p>Sic.</p>
  </body>
</html>
```

```
<!-- Google: Recommended -->
<!DOCTYPE html>
<title>Saving money,
saving bytes</title>
<p>Qed.
```

In order for the document to display properly with all the optional tags omitted, there are various conditions that need to be met for the document to display properly. <!--All of these conditions can be found in [greater detail here](https://www.w3.org/TR/html5/syntax.html#optional-tags)-->

---
## Practice

Which one of these elements is implied, even if the tags are not written in the markup code?

???

* `<html>`
* `<audio>`
* `<link>`
* `<mainelement>`
* `<p>`

---
## Revision

What are optional elements?

???

* Elements where either the starting, ending, or both tags may be omitted.
* Elements that are always there regardless of the code.
* Elements that have different options within them.
* Optional elements is just a name for HTML elements.

---
## Quiz

### How much do you know about optional elements?

Which page structure is recommended by Google for HTML5 pages today?

Option 1  

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Option #1</title>
  </head>
  <body>
    <p>Hello.</p>
  </body>
</html>

Option 2  

```html
<!DOCTYPE html>
<title>Option #2</title>
<p>Hello.
```

* Option 2
* Option 1
* Neither
* Both
