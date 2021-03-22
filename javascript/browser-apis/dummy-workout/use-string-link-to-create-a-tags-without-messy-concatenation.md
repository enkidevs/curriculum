---
author: AlexYancey
levels:
  - basic
  - advanced
  - medium
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Use `String.link` to create `<a>` tags without messy concatenation


---

## Content

When manipulating the `DOM` in JavaScript, it is often useful to create your own hyperlinks using `<a href="">`. 

Instead of:

```js
const text = "Click";
const url = "http://test.com";
document.write(
  '<a href="' + url + '">' +
   text + '</a>'
);
// <a href="http://test.com">Click</a>
```

Use:

```js
document.write(
  "Click".link("http://test.com")
);
// <a href="http://test.com">Click</a>
```


---

## Practice

Complete the code snippet below to create the following element:

```javascript
// <a href='www.practiceyourJS.com'>JS</a>

"???".???('www.practiceyourJS.com');
```

- `JS`
- `link`
- `practiceyourJS`
- `url`
- `href`
- `<a>`
- `write`
- `document`


---

## Revision

Complete the snippet below to create the element commented:

```javascript
// <a href="http.enki.com">Enki</a>
"Enki".???("http.enki.com");
```

- `link`
- `write`
- `to`
- `document`
- `url`
