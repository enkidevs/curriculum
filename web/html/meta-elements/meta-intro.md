---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.metadata.0: 10

aspects:
  - introduction
  - workout

---
# Meta Intro
---
## Content

In HTML the `<meta>` element is used to describe essentially information about your HTML document or web page. It can contain attributes that share more info about the author, keywords, page description, how to encode your document etc.

The `<meta>` element should always be inside the `<head>` element.

Data within the `<meta>` element will never be displayed on a webpage. However, the data within some of the tags within the `<meta>` element will help improve SEO(Search Engine Optimization). Some of the data will also be displayed in the search engine results.

Here's an example of how metadata is written within an HTML webpage.
```
<head>
 <meta
   charset="UTF-8">
 <meta
   name="title"
   content="Page Title">
 <meta
   name="description"
   content="Meta Element Intro">
 <meta
   name="author"
   content="John Doe">
 <meta
  name="robots"
  content="NOINDEX, NOFOLLOW">
</head>
```

Next to the `<meta name="title" content="Page Title">` tag, the `<title>` tag also describes metadata. The difference is the `<title>` is more important than the `<meta>` title tag. This is because the `<title>` tag is used as the valid markup for a title that will be displayed. Whereas the `<meta>` title tag is used for crawling(web indexing with internet bots).

**Note:** Google will ignore any meta tags it doesn't recognize.

---
## Practice

Meta tags do all but which of the following:

???

* Some of the data can be displayed in the web page.
* Google will ignore meta tags it doesn't recognize.
* Are added to the `<head>` of nearly every web page.
* Are used to provide information to all sorts of clients.
* Some specific data will display in search engine results.
* Some of the tags will help improve the pages SEO.

---
## Revision

What is used to provide search engines with information about the content/purpose of the web site?

???

* metatags
* cookies
* reach
* tracking
* declaration

---
## Quiz

### Answer a quick question about the HTML meta element!

Can you name three types of the most common meta tags?

???

* Title, Description and Robots
* Follow, Advertise and Keyword
* Facebook, Twitter and Google
* Title, Keyword and Advertise
