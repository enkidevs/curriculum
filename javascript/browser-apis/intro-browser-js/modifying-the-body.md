---
author: elliehoward
type: normal
category: must-know
links:
  - >-
    [MDN -
    document.body](https://developer.mozilla.org/en-US/docs/Web/API/Document/body){website}
  - >-
    [W3 Schools - HTML DOM body
    Property](https://www.w3schools.com/jsref/prop_doc_body.asp){website}
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

# Modifying the Body


---

## Content

To reference the body element with the DOM you simply use `document.body` rather than selecting the body element with `getElementsByTagName` method. For example, this is how to store a reference to the body in a variable:  
`var bodyElement = document.body`  

## Overwriting the body

If you change the content of the body it will overwrite all elements inside the body.

```html
<html>
  <body>
    <h1>Welcome to my page</h1>
    <p>Hello World!</p>
    <p>My page has so much content</p>

    <script>
      document.body.innerHTML =
        "Changed!";
    </script>
  </body>
</html>;
```

In the example above, the `h1` element and the two paragraph elements would be overwritten with the word "Changed!"

## Modifying the body

You can also do cool things like change the background color of the page by setting attributes on the body element:

```html
<html>
  <body>
    <h1>Hello World!</h1>
    <script>
      document
        .body
        .style
        .backgroundColor
          = "pink";
    </script>
  </body>
</html>;
```


---

## Practice

Store a reference to the body element in a variable:

```js
let bodyElement = 
  ???.???
```

- `document`
- `body`
- `getElementById`
- `getElementsByTagName`
- `DOM`
- `element`
- `innerHTML`


---

## Revision

What happens when you change the `innerHTML` of the body tag?

???

- You overwrite all elements inside the body tag with the new content.
- The content is appended to the existing content of the body tag.
- A syntax error is thrown.
