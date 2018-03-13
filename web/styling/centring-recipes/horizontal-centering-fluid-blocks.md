---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern


links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/618097/how-do-you-easily-horizontally-center-a-div-using-css){website}'

notes: >-
  http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/

---

# Horizontal centering fluid blocks

---
## Content

To horizontally center blocks of unknown width:

```css
#horizontal-center {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}
```

The `left` property relates to the size of the parent so the left of child will be in the middle. The `transform` property relates to the child size. Hence it will be centered. 

You can check out the evolution here:


![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20800%20310%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Cg%20fill=%22none%22%20stroke=%22black%22%20stroke-width=%221%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20%3E%0A%3C/g%3E%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M0,0%20L800,0%20L800,300%20L0,300%20L0,0%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M400,15%20L700,15%20L700,135%20L400,135%20L400,215%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22408%22%20y=%2255%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Eleft:50%25;%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M0,150%20L800,150%20L800,151%20L0,151%20L0,150%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M400,1%20L401,1%20L401,301%20L400,301%20L400,1%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M250,165%20L550,165%20L550,285%20L250,285%20L250,165%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22258%22%20y=%22197%22%20font-family=%22'Roboto',%20sans-serif%22%20%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Eleft:50%25;%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22258%22%20y=%22238%22%20font-family=%22'Roboto',%20sans-serif%22%20%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Etransform:%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22258%22%20y=%22279%22%20font-family=%22'Roboto',%20sans-serif%22%20%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3EtranslateX%28-50%25%29;%3C/text%3E%0A%3C/g%3E%0A%0A%3C/svg%3E%0A)

---
## Revision

What does the following CSS code do? ???

```css
#class {
   position: absolute;
   left: 50%;
   transform: translateX(-50%);
}
```

* Horizontally centres a block with an unknown width.
* Horizontally flips a block with an unknown width.
* Sets a blocks left side to be 50% across the document.
* Sets the blocks position to absolute and flips it horizontally.

