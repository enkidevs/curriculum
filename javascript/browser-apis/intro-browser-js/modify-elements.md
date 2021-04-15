---
author: elliehoward
type: normal
category: must-know
links:
  - >-
    [Document.getElementById()](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementById){documentation}
  - >-
    [Document.getElementsByClassName()](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByClassName){documentation}
  - >-
    [Document.getElementsByTagName()](https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementsByTagName){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Modify Elements


---

## Content

Elements, once found, can be modified. You can modify any attribute of the element, as well as the style of the element. 

Here's an example that finds all of the paragraphs with the class `"blue"`. There are no style rules associated with that CSS class, so let's change the style of each element.

```html
<html>
  <body>
    <p>Hello World!</p>
    <p class="blue">This should be blue</p>
    <p>This is not blue</p>
    <p class="blue">This should be blue</p>
    <p>This is not blue</p>
    <p class="blue">This should be blue</p>

    <script>
      let blueTags = document.getElementsByClassName(
        'blue'
      );

      for (
        let i = 0;
        i < blueTags.length;
        i++
      ) {
        blueTags[i].style.color = 'blue';
      }
    </script>
  </body>
</html>
```

We can also change the content of the tag to say `"This is blue"` rather than `"This should be blue"`.

```javascript
let blueTags = document.getElementsByClassName(
  'blue'
);
for (var i = 0; i < blueTags.length; i++) {
  blueTags[i].style.color = 'blue';
  blueTags[i].innerHTML = 'This is blue';
}
```


---

## Practice

Change the content of each paragraph tag to say `"My content was changed!"`:

```html
<html>
  <body>
    <p>Hello World!</p>
    <p>I am a paragraph tag</p>
    <p>my content can be changed</p>

    <script>
      let paragraphTags = document.???("???");
      for (
        let i = 0;
        i < paragraphTags.length;
        i++
      ) {
        ???[i].??? =
          'My content was changed!';
      }
    </script>
  </body>
</html>
```

- `getElementsByTagName`
- `p`
- `paragraphTags`
- `innerHTML`
- `document`
- `i`
- `getElementsByClassName`


---

## Revision

Change each element with the classname `"red"` to have a red text color.

```html
<p>
  Hello World!
</p>
<p class="red">
  This should be red
</p>
<p>
  This is not red
</p>
<p class="red">
  This should be red
</p>
<p>
  This is not red
</p>
<p class="red">
  This should be red
</p>

<script>
  let redTags = document.???(
    'red'
  );

  for (let i = 0; i < redTags.length; i++) {
    redTags[i].style.color = 'red';
  }
</script>
```

- `getElementsByClassName`
- `getElementsByTagName`
- `getElementById`
