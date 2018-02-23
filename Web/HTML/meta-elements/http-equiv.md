# Http-equiv
author: matthew-leach

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - deep

---
## Content

New content to go here. The author must be updated to match a valid Enki account.

---
## Practice

Write the meta tag that automatically redirect users from one webpage to another after 30 seconds. 

`<??? ????="???" ???="??? ???">`

* meta
* http-equiv
* refresh
* content
* 30;
* URL=redirectedpage.html
* redirect
* http://redirectedpage.html

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

The easiest way to redirect a web page to another is using a meta redirect tag in the `<head>`, but is it best way?

`<meta http-equiv="refresh" content="0; URL=redirectedpage.html">`

???

* No
* Yes
* There is an error in the sample code.

<!-- 
Note: The better option is using JS: 
<script>
  window.location = "http://new-website.com";
</script>
-->