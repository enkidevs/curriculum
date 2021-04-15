---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [Optional Tag
    List](https://html.spec.whatwg.org/multipage/syntax.html#optional-tags){documentation}
  - >-
    [Google: Optional
    Elements](https://google.github.io/styleguide/htmlcssguide.html#Optional_Tags){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Optional Elements


---

## Content

In HTML5, there are a lot of optional tags where either the starting, ending, or both tags can be omitted. Just because an element's tag is omitted, it doesn't mean the element itself is not present at all. It means that it is implied and is there no matter if the markup code doesn't contain the typical tags.

Some optional elements:

- `<html>`
- `<head>`
- `<body>`
- `<p>`'s closing tag.

Although this isn't a very common practice, Google's HTML styleguide recommends that optional tags be used to help cut down on the file size and improve the scannability of the document. They also recommend that developers not pick some optional tags and omit others as consistency is important in avoiding simple mistakes.

```html
<!-- Not recommended by Google -->
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

```html
<!-- Recommended by Google -->
<!DOCTYPE html>
<title>Saving money,
saving bytes</title>
<p>Qed.
```

> ❗ Not all tags can be omitted. For example, `<title>` will still need an opening and closing tag.

In order for the document to display properly with all the optional tags omitted, there are various conditions that need to be met. Check out the *Learn More* section for a full list of optional tags and conditions.


---

## Practice

Which one of these elements is implied, even if the tags are not written in the markup code?

???

- `<html>`
- `<audio>`
- `<link>`
- `<mainelement>`
- `<p>`


---

## Revision

What are optional elements?

???

- Elements where either the starting, ending, or both tags may be omitted.
- Elements that are always there regardless of the code.
- Elements that have different options within them.
- Optional elements is just a name for HTML elements.


---

## Quiz

### How much do you know about optional elements?


Which page structure is recommended by Google for HTML5 pages today?

Option 1  

````html
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
````

- Option 2
- Option 1
- Neither
- Both
