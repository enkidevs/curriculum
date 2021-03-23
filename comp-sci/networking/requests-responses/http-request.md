---
author: SebaRaba
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The HTTP request


---

## Content

Whenever a web browser fetches a file from a **web server**, it is using the `HTTP` protocol. `HTTP` is a *request/response* protocol: your machine sends a request to the server, which, in turn returns a response.

The usual request structure is:

```plain-text
Request-Line
(general-header or
  request-header or
  entity-header) CRLF
CRLF
Message-Body
```

The `Request-Line` is composed of:

```plain-text
Method Request-URI HTTP-Version CRLF
```

### Request line

The request line contains the **HTTP method** (verb), followed by the **resource URL** and the **protocol version**. Every component must be separated by a *space character* and the line should end in *CRLF* (Carriage Return + Line Feed) characters, generating a new line.

The *HTTP methods* can be either one of: `GET`, `POST`, `DELETE`, `HEAD` etc. Only one method per request is allowed. More on these in a future workout.

The *resource URI* is the path on the server which the request is supposed to target. If a user clicks on the `Contact` page on your website, the browser would be likely to make a request to fetch the `/contact` page on the server.

Keep in mind that this is *not necessarily an absolute URL*[1]: in this case, the address of the server (e.g. `www.myAwsomeWebsite.com`) has to be specified in the `Host` field of the header.

The *HTTP version* is self explanatory: it announces the protocol understood by the client and that should also be adopted by the server.

### Request header

There are multiple fields that can go into the header of a request. Some of them are:

- **User-Agent**: specifies details about your web browser and your OS
- **Accept**: states what resource format will be accepted (`text/plain` for documents, `text/html` for web pages, `audio/*` for any type of audio file etc.)
- **Accept-Language**: specifies the type of language the website should be in, in case there are multiple available options
- **Referer**(sic!): specifies what page the request originated from (the misspelled word is part of the official terminology).
- **Content-Type**: tells the server what type of files can be added to the response


---

## Practice

The usual syntax of a request line is:

```plain-text
??? ??? ??? ???
```

- Method
- URI
- HTTP version
- CRLF
- CTRLF
- Host


---

## Revision

The request header field that delivers information about your browser and operating system is

???

- User-Agent
- Accept
- Cookies
- Browser
- User


---

## Footnotes

[1: Relative vs Absolute URL]

The absolute URL is:

```plain-text
http://www.myAwsomeWebsite.com/contact
```

While the relative one (which requires the `Host` field) is:

```plain-text
/contact
```
