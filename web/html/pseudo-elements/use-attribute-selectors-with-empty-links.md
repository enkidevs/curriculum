---
author: jordanfish

levels:

  - advanced

  - medium

type: normal

category: hack


links:

  - '[github.com](https://github.com/AllThingsSmitty/css-protips){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/::before){documentation}'


---

# Use attribute selectors with empty links

---
## Content

Display links when the `<a>` element has no text value but the `href` attribute has an external link:
```
a[href^="http"]:empty::before {
  content: attr(href);
}
```
The above code targets:
```html
<a href="http://anysite.com"></a>
```
And it effectively copies the value of `<a>`'s `href` attribute as the content of the `::before` pseudo element. The element will look like this: 
```html
<a href="http://anysite.com">
http://anysite.com
</a>
```

---
## Revision

Complete the code snippet to display links when the `<a>` element has no text value yet the `href` attribute has an external link:

```css
a[???="http"]:empty::before {
   content: ???(href);
}
```


* `href^`
* `attr`
* `href`
* `link`
* `display`
* `disp^`

