---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.metadata.0: 10
  web.metadata.1: 10
  web.metadata.3: 10

aspects:
  - obscura
  - deep
---
# Http-equiv
---
## Content

The HTML `http-equiv` meta attribute defines an instruction that can alter user-agent and server behavior. It can contain the name of an HTTP header or it can be used to simulate an HTTP response header.

The value of `http-equiv` is defined inside the `content` attribute.

Example 1: The document will refresh every 30 seconds.
```
<head>
  <meta
    http-equiv="refresh"
    content="30">
</head>
```

Example 2: The document will automatically redirect users from one webpage to another after 30 seconds.
```
<head>
  <meta
    http-equiv="refresh"
    content="30;
    URL=redirectedpage.html">
</head>
```

**Note:** The better option is using JS:
```
<script>
  window.location =
  "http://new-website.com";
</script>
```

Next to the `refresh` attribute we have:
- `content-language`
- `content-security-policy`
- `content-type`
- `set-cookie`

Attributes explanation:

The `content-language` attribute is used to specify the default language, However, you should always use the `lang` attribute to set your default language of the page because the `http-equiv="content-language` is obsolete.

The `content-security-policy` allows authors to define a content policy for the current page. Those policies mostly specify the allowed server origins and script endpoints which help guard against cross-site scripting attacks.

Before HTML5 you would use the `http-equiv="content-type` attribute to specify the character set of an HTML document. Like so:
```
<meta
  http-equiv="content-type"
  content="text/html;
  charset=UTF-8">
```
Now it is way simpler to specify the character set thanks to the `charset` attribute:
```
<meta charset="UTF-8">
```
**Note:** You should always use the `charset` attribute to set you character encoding because the `http-equiv="content-type` is obsolete.

The `set-cookie` attribute is used to define a `cookie` for the page. However, you should always use the HTTP header `Set-Cookie` to set Cookies for the page because the `http-equiv="set-cookie` is obsolete.

---
## Practice

Write the meta tag that automatically redirects users from one webpage to another after 30 seconds.

`<??? ???="???" ???="??? ???">`

* `meta`
* `http-equiv`
* `refresh`
* `content`
* `30;`
* `URL=redirectedpage.html`
* `redirect`
* `http://redirectedpage.html`

---
## Revision

Which line of code automatically redirect users from one webpage to another after 45 seconds?

???

* `<meta http-equiv="refresh" content="45; URL=redirectedpage.html">`
* `<meta http-equiv="redirect" content="45; URL=redirectedpage.html">`
* `<meta http-equiv="refresh" content=".45; URL=redirectedpage.html">`
* `<meta http-equiv="refresh" content="45; http://redirectedpage.html">`
* `<meta http-equiv="direct" content="45; URL=redirectedpage.html">`

---
## Quiz

### How much do you know about the HTML meta `http-equiv` attribute?

The easiest way to redirect a web page to another is using a meta redirect tag in the `<head>`, but is it the best way?

```
<meta
  http-equiv="refresh"
  content="0;
  URL=redirectedpage.html">
```

???

* No
* Yes
* There is an error in the sample code.
* This way doesn't work at all.
