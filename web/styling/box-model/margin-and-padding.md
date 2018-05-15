---
author: mihaiberq

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: must-know

inAlgoPool: false


links:

  - '[MDN margin](https://developer.mozilla.org/en-US/docs/Web/CSS/margin){documentation}'
  - '[MDN padding](https://developer.mozilla.org/en-US/docs/Web/CSS/padding){documentation}'


---

# Margin and Padding

---
## Content

Both properties are, alongside `border`, part of the **box model**. They are usually used to help with positioning and visibility.

Different browsers may have different default values for elements, so specifying them yourself might be a good idea.

### Margin
The `margin` property sets the amount of space that surrounds an element, outside its `border`. They are used for *positioning* the element inside a page and distancing it from other elements. 

Like `border`, margins can be set individually:
```
div{ 
  margin-top:20px;
  margin-left: 10px;
  margin-bottom: 20px;
}
```
Or using the shorthand notation:
```
div{
/* same value for top and bottom
   and left and right */
  margin: 20px 10px;
/* values for top, right, bottom 
   and left */
  margin: 20px 5px 15px 10px;
}
```

### Padding

The `padding` property sets the space between the `content` and the `border`, in case of the element having a border. The property is used to provide spacing inside an element:
```
div{
  padding: 10px;
}
```
Unlike `margin`, it will extend the element borders:

![min.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22212%22%20y=%22112%22%20font-family=%22Arial%22%20font-size=%2225%22%20font-weight=%22400%22%20fill=%22#fff%22%3E%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22423%22%20y=%22112%22%20font-family=%22Arial%22%20font-size=%2225%22%20font-weight=%22400%22%20fill=%22#fff%22%3E%3C/text%3E%3Cpath%20d=%22M208%2041h204v104H208V41%22%20fill=%22#3ed715%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M208%2041h204v2H208v-2M208%20143h204v2H208v-2%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M208%2041h2v104h-2V41M410%2041h2v104h-2V41%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M419%2041h204v104H419V41%22%20fill=%22#ff4500%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M419%2041h204v2H419v-2M419%20143h204v2H419v-2%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M419%2041h2v104h-2V41M621%2041h2v104h-2V41%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M210%20176h254v104H210V176%22%20fill=%22#3ed715%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M210%20176h254v2H210v-2M210%20278h254v2H210v-2%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M210%20176h2v104h-2V176M462%20176h2v104h-2V176%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M498%20173h204v104H498V173%22%20fill=%22#ff4500%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M498%20173h204v2H498v-2M498%20275h204v2H498v-2%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M498%20173h2v104h-2V173M700%20173h2v104h-2V173%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3C/g%3E%3C/svg%3E)

On the first line, neither of the rectangles have margin or padding. On the second line, the *green* one has `padding-right:50px`, while the *orange* one has `margin-left:30px`. You can see the difference between the two properties.

Just like margins, you can set individual padding:
```
div{
  padding-top: 30px;
  padding-right: 15px;
}

/* or */
div.special{
  padding: 10px 0px 30px 5px;
}
```

---
## Practice

In the `padding` shorthand declaration, which value is the `padding-left`?
```
padding: 10px 0px 13px 5px;
```
???


* Fourth 
* First
* Second
* Third

---
## Revision

The ??? property expands the borders of the element, while ??? property pushes it from other adjacent ones.


* padding
* margin
* border
* box

