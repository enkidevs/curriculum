---
author: elliehoward
type: normal
category: must-know
links:
  - >-
    [MDN -
    Element.innerHTML](https://developer.mozilla.org/en-US/docs/Web/API/Element/innerHTML){website}
  - >-
    [W3 Schools - DOM Body property (Try out the
    examples)](https://www.w3schools.com/jsref/prop_doc_body.asp){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Element Contents


---

## Content

Elements have a property called `innerHTML` that gets or sets the HTML contained within the element. Setting the `innerHTML` of an element overwrites the contents of an element, including nested elements. Consider the following example:

```HTML
<body>
  <h1>Hello world</h1>
  <p>This is HTML</p>
</body>
```

The body tag has a couple of elements within it. If we set the `innerHTML` of the body tag then these elements will be overwritten by the new content.

```javascript
document
  .body
  .innerHTML = 'Hello world'
```

The DOM now looks like this:

```HTML
<body>
  Hello world
</body>
```

Remember: if you want to overwrite the contents of an element, set the `innerHTML` property. If you just want to add to an element's contents you should use the `appendChild` method.


---

## Practice

Fill in the blanks to overwrite the contents of the div element with `id='container'`:

```HTML
<body>
  <div id='container'>
    <h1>Hello world</h1>
    <p>This is HTML</p>
  </div>
</body>
<script>
document
  .???('container')
  .??? = 'I love coffee!'
</script>
```

- getElementById
- innerHTML
- appendChild
- body
- getElementsByClassName
- div
- string


---

## Revision

Which code example will result in overwriting the contents of the body?

???

Option A:

```HTML
<body>
  <h1>Hello world</h1>
  <p>This is HTML</p>
</body>
<script>
document
  .body
  .innerHTML = 'I love coffee!'
</script>
```

Option B:

```HTML
<body>
  <h1>Hello world</h1>
  <p>This is HTML</p>
</body>
<script>
document
  .body
  .appendChild = '<p>I love coffee!</p>'
</script>
```

Option C:

```HTML
<body>
  <h1>Hello world</h1>
  <p>This is HTML</p>
</body>
<script>
document
  .body = '<p>I love coffee!</p>'
</script>
```

- A
- B
- C
