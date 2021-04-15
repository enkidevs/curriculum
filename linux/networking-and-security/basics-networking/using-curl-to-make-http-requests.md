---
author: jfarmer
type: normal
category: must-know
links:
  - >-
    [More use
    cases](http://www.thegeekstuff.com/2012/04/curl-examples/){website}
revisionQuestion:
  formats:
    - type-in-the-gap
  context: standalone
---

# Using `curl` To Make HTTP Requests


---

## Content

Virtually every Unix system comes with the `curl` command pre-installed.  `curl` allows us to simulate any HTTP request, although most commonly it's used to download files and webpages from the command-line.

Here's a quick example:

```shell
curl http://google.com
<HTML><HEAD>
<TITLE>301 Moved</TITLE></HEAD><BODY>
<H1>301 Moved</H1>
The document has moved
<A HREF="http://www.google.com/">here</A>.
</BODY></HTML>
```

Here, `curl` is fetching the contents of `http://google.com` and printing out whatever we receive in response.  In this case, we receive an HTML document telling us go to `http://www.google.com` instead.  A normal browser would follow this redirect automatically, so as a user we'd never see this page.

If we ask `curl` to fetch something other than text it will still try to print out its contents to the console, resulting in gibberish.

### Saving Output From `curl`

There are two main ways to save the output from curl: using `>` redirection or using the `-o` option.

```shell
curl http://foo.com/bar.mp3 > song.mp3
curl -o song.mp3 http://foo.com/bar.mp3
```

Both of these will result in `curl` downloading `bar.mp3` and writing it to the `song.mp3` file in the current directory.


---

## Revision

Complete the following command line snippet to download the picture using `curl`, outputing to a `cat.jpg` file:

```bash
??? ??? ??? https://catpictures.com/cat1.jpg
```

- `curl`
- `-o`
- `cat.jpg`
- `-O`
- `-d`
