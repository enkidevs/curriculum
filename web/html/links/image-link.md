---
author: 'shoutmatt'

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[CodePen: Image Link](https://codepen.io/enkidevs/pen/NBpQLw){code}'
  - '[CodePen: Image & Text Link](https://codepen.io/enkidevs/pen/RBpXEG){code}'

---
# Image Links
---
## Content

In order to add a link onto an image, simply place the link `<a> </a>` element around any image element `<img>`:

```html
<a href="http://enki.com">
  <img
    src="icon.png"
    alt="Click to visit Enki"
  >
</a>
```

Actually, anything added within a link element in HTML5 will be linked - this includes any blocks of text, any number of images, etc. But just because anything can be linked, doesn't mean it all should. Best practices typically encourage all elements to be individually linked. But, linking both an image and text would be written like this:

```html
<a href="http://enki.com">
  <img
    src="icon.svg"
    alt="Click Here"
  >
  <p>Link to Enki</p>
</a>
```

![link-text-and-image](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2293%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2293%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%230001EE%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2271%22%3ELink%20to%20Enki%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23262B32%22%20d%3D%22M33%2028l-13%208.44444v2.11112L33%2047v-3.69444L23.9%2037.5l9.1-5.80556z%22%2F%3E%3Cpath%20fill%3D%22%23FB703E%22%20d%3D%22M41%2036.21212v-.24242C41%2025.32318%2045.49495%2020%2054.48498%2020c1.8821%200%203.58898.29798%205.1207.89394%201.5317.59596%202.74804%201.29798%203.64905%202.10606.901.80808%201.69187%201.86363%202.37263%203.16667.68076%201.30303%201.1663%202.40908%201.45662%203.31818.29033.9091.51557%202.0101.67575%203.30303.16018%201.25253.24027%202.0404.24027%202.36364v1.33333l-.12013%202.18182H45.505c.2803%203.11112%201.22134%205.36868%202.82313%206.77272%201.60179%201.40405%203.9744%202.10606%207.11791%202.10606%204.0503%200%207.31796-.6317%209.7826-1.91536l.75911%204.2184C63.02446%2051.28283%2059.4305%2052%2055.20578%2052h-.1802c-1.802%200-3.45383-.21717-4.9555-.65152-1.50168-.43434-2.9783-1.18686-4.42992-2.25757-1.45162-1.07071-2.58788-2.6818-3.4088-4.83333C41.41047%2042.10605%2041%2039.49496%2041%2036.42424v-.21212zm5.03525-1.51515h17.95996c0-.70707-.0851-1.49495-.25529-2.36364-.17019-.86869-.51056-1.98484-1.02113-3.34848-.51057-1.36364-1.43159-2.5-2.76307-3.4091-1.33149-.90909-2.9783-1.36363-4.9405-1.36363-3.04339%200-5.25082.79797-6.62235%202.39394-1.37153%201.59597-2.1574%204.29291-2.35762%208.09091z%22%2F%3E%3Cpath%20fill%3D%22%23262B32%22%20d%3D%22M83.88889%2017H87L76.11111%2051H73zM102%2028l-13%208.44444v2.11112L102%2047v-3.69444L92.9%2037.5l9.1-5.80556z%22%2F%3E%3Cpath%20stroke%3D%22%230001EE%22%20stroke-linecap%3D%22square%22%20d%3D%22M21%2073h84%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

---
## Practice

Create a linked image:

```
<??? ???="???">
  <???
    ???="???"
    ???="Click Here"
  >
<???>
```

* a
* href
* http://enki.com
* img
* src
* icon.svg
* alt
* /a
* target
* _blank
* link

---
## Revision

What is the correct HTML for creating a linked image?

???

* `<a href="http://enkipro.com"><img src="icon.svg" alt="Click Here"></a>`
* `<a href="http://enkipro.com"><img href="icon.svg" alt="Click Here"></a>`
* `<a href="http://enkipro.com"><img src="icon.svg" alt="Click Here">`
* `<a url="http://enkipro.com"><img src="icon.svg"></a>`
* `<img src="icon.svg"><a>http://enkipro.com</a></img>`
* `<a link="http://enkipro.com"><img src="icon.svg" alt="Click Here"></a>`

---
## Quiz

### How much do you know about links and images?

Which is a true statement?

```html
<a href="http://www.site.com">
  <p>These are my favorite places:</p>
  <img src="mountain.jpg" alt="Snowy Mountain">
  <img src="beach.jpg" alt="Sandy Beach">
</a>
```

* The text and images will be linked to the same site.
* The text and images will not link to the site this way.
* The text and images will link, but this is not valid HTML.
* Only the paragraph will be linked to the site.
