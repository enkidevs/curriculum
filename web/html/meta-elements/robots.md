---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.metadata.0: 10
  web.metadata.3: 10
  web.metadata.4: 10

tags:
  - workout
  - deep

---
# Robots
---
## Content

The HTML meta `robot` attribute is used to define the behavior that robots, or cooperative crawlers, should follow on a page.

Example:
```
<meta
  name="robots"
  content="noindex, nofollow'>
```

In the example above, with the `noindex` parameter we have told the search engine not to index the page, and with the `nofollow` parameter we have told crawlers not to follow any links on a page.

If no robot tag is present, the default value is `content="index, follow">`. Which tells the robot to index the page and crawl through the rest of the pages.

There are a couple of more parameters you can set. These are:
 - `noimageindex`
 - `none`
 - `noarchive`
 - `nocache`
 - `nosnippet`
 - `nodp`

The `index`, `noindex`, `follow` and `nofollow` values are used by all browsers.

The `noimageindex` value is used to instruct the crawler not to index any images on a page. Used by Google.

The `none` value is equivalent to using the `noindex` and `nofollow` tags simultaneously. Used by Google.

The `noarchive` value is used to tell search engines not to cache the content of the page. Used by Google, Yahoo, and Bing.

The `nocache` value is the same as the `noarchive` value. Used only by Bing.

The `nosnippet` value is used to prevent search engines from displaying any page description in the search engines result. Used by Google and Bing.

The `nodp` value is used to prevent the use of the `Open Directory Project` description as the description of the page in the search engine result. Used by Google, Yahoo, and Bing.

---
## Practice

Write the meta tag that tells search engines not to index you webpage.

`<??? ???="???" ???="???, ???">`

* meta
* name
* robots
* content
* noindex
* nofollow
* search
* engines
* end

---
## Revision

Which line of code tells search engines not to index or scan your webpage?

???

* `<meta name="robots" content="noindex, nofollow">`
* `<meta name="web" content="noindex, nofollow">`
* `<meta name="index" content="noindex, nofollow">`
* `<meta name="search" content="noindex, nofollow">`
* `<meta name="archive" content="noindex, nofollow">`

---
## Quiz

### How much do you know about the HTML robots tag?

What is the default value of the robots meta tag?

???

* `<meta name="robots" content="index, follow">`
* `<meta name="robots" content="noindex, follow">`
* `<meta name="robots" content="index, nofollow">`
* `<meta name="robots" content="noindex, nofollow">`
