---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.layout-html.0: 10
  web.semantic-html.0: 10
  web.semantic-html.1: 10
  web.semantic-html.3: 10

aspects:
  - introduction
  - workout
  - deep
  
links:
  - https://developer.mozilla.org/en-US/docs/Web/HTML/Element/article
  - https://www.w3schools.com/tags/tag_article.asp

---
# Article
---
## Content

The HTML `<article>` element is used to represent independent, self-contained content in a document, page, website or an application. This content is independently reusable and shared outside or within a web page.

The `<article>` element can contain:
  - a forum post
  - a magazine
  - a newspaper article
  - blog entry

Example:
```
<article>
  <h1>Facebook</h1>
  <p>
    Connect with friends,
    family and other people you know.
    Share photos and videos,
    send messages and get updates.
  </p>
</article>
```

Additionally, each `<article>` element should be properly identified by adding a heading element(`<h1>`-`<h6>`) as it's child.

You can also nest `<article>` elements. When nested within another `<article>` element, the inner `<article>` element represents an article related to the outer element. For instance, comments on a social media post can be `<article>` elements nested within the `<article>` element representing that social media post.

---
## Practice

The `<article>` element can contain which of the following?

???

* All 4
* Forum post
* Blog post
* News story
* Magazine

---
## Revision

Which HTML container element should be used to hold independent, self-contained content that is possible to share on its own outside the website?

???

* `<article>`
* `<section>`
* `<blog>`
* `<comment>`
* `<news>`
* `<record>`
* `<forum>`

---
## Quiz

### How much do you know about the HTML sectioning elements?

Which HTML container would be best when used on its own in a feed reader?

???

* `<article>`
* `<section>`
* `<main>`
* `<comment>`
* `<news>`
* `<aside>`
* `<forum>`
