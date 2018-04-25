---
author: catalin

levels:
  - advanced
  - medium

type: normal

category: tip

links:
  - '[davidwalsh.name](https://davidwalsh.name/social-sharing-links){website}'

---
# Social sharing without widgets

---
## Content

Create your own widgets for social sites by defining your social sharing links as `functions` and linking them to `listeners`.

Examples:

Share on **Twitter**:

```javascript
function shareTwitter(url, text) {
  open('http://twitter.com/share?url='
  + encodeURIComponent(url) + '&text='
  + encodeURIComponent(text), 'tshare',
 `height=400,width=550,resizable=1,
  toolbar=0,menubar=0,status=0,
  location=0`);
}
```

Share on **Facebook**:

```javascript
function shareFacebook(url, text, image) {
  open(`http://facebook.com/sharer.php?
  s=100&p[url]=` + encodeURIComponent(url)
  + '&p[images][0 ]='
  + encodeURIComponent(image)
  + '&p[title]=' + encodeURIComponent(text)
  ,'fbshare', `height=380,width=660,
   resizable=0,toolbar=0,menubar=0,
   status=0,location=0,scrollbars=0`);
}
```

To call the functions, add the `onclick` event attribute to a `<button>` element:

```html
<button onclick=`
shareTwitter('mywebsite.com'),
 'This is my website'`>
 Share
</button>
```

---
## Revision

Complete the code snippet below to share a link on twitter:

```javascript
function shareTwitter(url, text) {
  ???('http://twitter.com/share?url='
  + ??? + '&text=' + ???, 'tshare',
 'height=400,width=550,resizable=1,
  toolbar=0,menubar=0,status=0,
  location=0');
}
```

* `open`
* `url`
* `text`
* `link`
* `get`
* `fetch`
* `page`
* `share`

