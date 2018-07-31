---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - obscura
  - deep

standards:
  web.syntax-html.2: 10
  web.syntax-html.3: 10


---
# Conditional Comments (ie9)
---
## Content

Internet Explorer (IE) is a web browser specifically for Windows. Older versions of IE often run into certain technical issues when displaying current web pages and end up displaying the pages differently compared to all other popular web browsers today. When web developers are creating web pages for these older versions of IE, there is a unique way of providing (and hiding) code from these specific browsers - and that is with conditional comments.

Conditional comments are conditional statements used only by Internet Explorer versions 5 through 9. Since these versions of IE are the only ones that support this code, it is easy to use this technique to target them with special needs as all other browsers will view this code as comments and completely ignore it.

Any code within this condition will be completely hidden by older versions of IE, referred to as "downlevel hidden":
```html
<!--[if expression]>
  HTML goes here
<![endif]-->
```

Any code within this condition will only run in older versions of IE, referred to as "downlevel revealed":
```html
<![if expression]>
  HTML goes here
<![endif]>
```

If certain code is meant to display on non-IE browsers and on some versions of IE, then both conditional comments and HTML comments can be written in a unique way like this:

```html
<!--[if expression]><!-->
  HTML goes here
<!--<![endif]-->
```

---
## Practice

How are conditional comments written for versions of IE prior to IE10?

???

 * `<!--[if IE]> HTML CODE HERE <![endif]-->`
 * `<!-[if IE]> HTML CODE HERE <[endif]->`
 * `<-[if IE]> HTML CODE HERE <![endif]-!>`
 * `<![if IE]> HTML CODE HERE <![endifIE]!>`

---
## Revision

Conditional comments only work in Internet Explorer, versions prior to IE10. Which version are these?

???

 * versions 5 through 9.
 * versions 1 through 9.
 * versions 7 through 9.
 * versions 8 and 9.
